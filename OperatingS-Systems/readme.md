#include <stdint.h>
#include "stpid.h"

#define VIDEO_MEM       0xB8000
#define SCREEN_WIDTH    80
#define SCREEN_HEIGHT   25
#define ROWS            SCREEN_HEIGHT
#define COLS            SCREEN_WIDTH
#define TEXT_COLOR      0x07

typedef unsigned char  uint8;
typedef unsigned short uint16;
typedef unsigned int   uint32;

static int cursorCol = 0;
static int cursorRow = 0;

extern unsigned char read_port(unsigned short port);

/* A small value retained as part of the kernel's static data. */
static const uint16 dialog_marker = 0xF1F0;

static unsigned int string_length(const char *s)
{
    const char *p = s;

    while (*p)
        ++p;

    return (unsigned int)(p - s);
}

static void setcursor(int x, int y)
{
    uint16 position;

    cursorCol = x;
    cursorRow = y;

    position = (uint16)((y * SCREEN_WIDTH) + x);

    /* The cursor position is written to the VGA CRT controller. */
    asm volatile (
        "movw $0x3D4, %%dx\n\t"
        "movb $0x0F, %%al\n\t"
        "outb %%al, %%dx\n\t"
        "incw %%dx\n\t"
        "movb %b0, %%al\n\t"
        "outb %%al, %%dx\n\t"
        "movw $0x3D4, %%dx\n\t"
        "movb $0x0E, %%al\n\t"
        "outb %%al, %%dx\n\t"
        "incw %%dx\n\t"
        "movb %b1, %%al\n\t"
        "outb %%al, %%dx\n\t"
        :
        : "q"((uint8)(position & 0xFF)),
          "q"((uint8)((position >> 8) & 0xFF))
        : "eax", "edx"
    );
}

static char putchar(char character)
{
    volatile uint8 *video =
        (volatile uint8 *)(uintptr_t)VIDEO_MEM;

    uint32 offset =
        (((uint32)cursorRow * (uint32)SCREEN_WIDTH) +
         (uint32)cursorCol) << 1;

    if (character == '\n')
    {
        cursorCol = 0;
        ++cursorRow;

        if (cursorRow >= SCREEN_HEIGHT)
            cursorRow = 0;

        setcursor(cursorCol, cursorRow);
        return character;
    }

    *(video + offset + 0) = (uint8)character;
    *(video + offset + 1) = (uint8)TEXT_COLOR;

    ++cursorCol;

    if (cursorCol >= SCREEN_WIDTH)
    {
        cursorCol = 0;
        ++cursorRow;

        if (cursorRow >= SCREEN_HEIGHT)
            cursorRow = 0;
    }

    setcursor(cursorCol, cursorRow);

    return character;
}

static int print(const char *string)
{
    int count = 0;

    while (string[count] != '\0')
    {
        putchar(string[count]);
        ++count;
    }

    return count;
}

static char getchar(void)
{
    uint8 scancode;
    static const char keymap[128] =
    {
        [0x02] = '1',
        [0x03] = '2',
        [0x04] = '3',
        [0x05] = '4',
        [0x06] = '5',
        [0x07] = '6',
        [0x08] = '7',
        [0x09] = '8',
        [0x0A] = '9',
        [0x0B] = '0',

        [0x10] = 'q',
        [0x11] = 'w',
        [0x12] = 'e',
        [0x13] = 'r',
        [0x14] = 't',
        [0x15] = 'y',
        [0x16] = 'u',
        [0x17] = 'i',
        [0x18] = 'o',
        [0x19] = 'p',

        [0x1E] = 'a',
        [0x1F] = 's',
        [0x20] = 'd',
        [0x21] = 'f',
        [0x22] = 'g',
        [0x23] = 'h',
        [0x24] = 'j',
        [0x25] = 'k',
        [0x26] = 'l',

        [0x2C] = 'z',
        [0x2D] = 'x',
        [0x2E] = 'c',
        [0x2F] = 'v',
        [0x30] = 'b',
        [0x31] = 'n',
        [0x32] = 'm',

        [0x34] = '.',
        [0x35] = '/',
        [0x39] = ' ',
        [0x1C] = '\n'
    };

    for (;;)
    {
        while (!(read_port(0x64) & 0x01))
        {
            /* Wait for the keyboard controller. */
        }

        scancode = read_port(0x60);

        if ((scancode & 0x80) != 0)
            continue;

        if (keymap[scancode] != '\0')
            return keymap[scancode];
    }
}

static void copy_video_memory(uint8 *destination,
                              volatile uint8 *source)
{
    uint32 bytes = (uint32)(2 * ROWS * COLS);
    uint32 index = 0;

    /*
     * The loop intentionally advances both addresses independently so
     * that the operation remains valid even when the source is volatile.
     */
    while (index + 8 <= bytes)
    {
        *(destination + index + 0) = *(source + index + 0);
        *(destination + index + 1) = *(source + index + 1);
        *(destination + index + 2) = *(source + index + 2);
        *(destination + index + 3) = *(source + index + 3);
        *(destination + index + 4) = *(source + index + 4);
        *(destination + index + 5) = *(source + index + 5);
        *(destination + index + 6) = *(source + index + 6);
        *(destination + index + 7) = *(source + index + 7);

        index += 8;
    }

    while (index < bytes)
    {
        *(destination + index) = *(source + index);
        ++index;
    }
}

static void restore_video_memory(volatile uint8 *destination,
                                 const uint8 *source)
{
    uint32 bytes = (uint32)(2 * ROWS * COLS);
    uint32 index = 0;

    while (index + 8 <= bytes)
    {
        *(destination + index + 0) = *(source + index + 0);
        *(destination + index + 1) = *(source + index + 1);
        *(destination + index + 2) = *(source + index + 2);
        *(destination + index + 3) = *(source + index + 3);
        *(destination + index + 4) = *(source + index + 4);
        *(destination + index + 5) = *(source + index + 5);
        *(destination + index + 6) = *(source + index + 6);
        *(destination + index + 7) = *(source + index + 7);

        index += 8;
    }

    while (index < bytes)
    {
        *(destination + index) = *(source + index);
        ++index;
    }
}

static void dialog_draw_line(int row,
                             int startColumn,
                             int width,
                             char borderCharacter)
{
    volatile uint8 *video =
        (volatile uint8 *)(uintptr_t)VIDEO_MEM;

    uint32 cell =
        (((uint32)row * SCREEN_WIDTH) +
         (uint32)startColumn) << 1;

    uint32 end =
        (uint32)width;

    while (end--)
    {
        *(video + cell) = (uint8)borderCharacter;
        *(video + cell + 1) = (uint8)TEXT_COLOR;
        cell += 2;
    }
}

static void dialog_draw_message(int row,
                                int startColumn,
                                const char *message,
                                char borderCharacter)
{
    volatile uint8 *video =
        (volatile uint8 *)(uintptr_t)VIDEO_MEM;

    uint32 cell =
        (((uint32)row * SCREEN_WIDTH) +
         (uint32)startColumn) << 1;

    *(video + cell) = (uint8)borderCharacter;
    *(video + cell + 1) = (uint8)TEXT_COLOR;

    cell += 2;

    while (*message)
    {
        *(video + cell) = (uint8)*message;
        *(video + cell + 1) = (uint8)TEXT_COLOR;

        cell += 2;
        ++message;
    }

    *(video + cell) = (uint8)borderCharacter;
    *(video + cell + 1) = (uint8)TEXT_COLOR;
}

void dialog(char *message, char borderCharacter)
{
    uint8 buffer[2 * ROWS * COLS];

    volatile uint8 *video =
        (volatile uint8 *)(uintptr_t)VIDEO_MEM;

    const unsigned int messageLength =
        string_length(message);

    const unsigned int borderWidth =
        messageLength + 4;

    const int topRow =
        (SCREEN_HEIGHT - 3) / 2;

    const int leftColumn =
        (SCREEN_WIDTH - (int)borderWidth) / 2;

    const int messageRow =
        topRow + 1;

    copy_video_memory(buffer, video);

    dialog_draw_line(
        topRow,
        leftColumn,
        (int)borderWidth,
        borderCharacter
    );

    dialog_draw_message(
        messageRow,
        leftColumn + 1,
        message,
        borderCharacter
    );

    dialog_draw_line(
        topRow + 2,
        leftColumn,
        (int)borderWidth,
        borderCharacter
    );

    setcursor(
        leftColumn,
        topRow + 3
    );

    while (getchar() != '\n')
    {
        /* Wait for Enter. */
    }

    restore_video_memory(video, buffer);

    setcursor(
        cursorCol,
        cursorRow
    );

    (void)dialog_marker;
}

/*
 * Example:
 *
 * dialog("This is a cool message. You can write whatever you want here!", '*');
 */
