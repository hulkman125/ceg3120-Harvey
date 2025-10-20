/*
*Program
 *Written by
 *@Tyler
 *@Raymond
 *@Harvey
 */
/*
 * Project Name:
 *  Project 3: Linked Sequence Data Structure
 */
/*
 * Description:
 * building a linked list along
 * with its own functions
 * for modification and outputing
 */

#include "Sequence.h"
#include <iostream>
#include <string>
#include <stdexcept>

using namespace std;

//----------------------------------------------------------------
// Sequence: the default constructor to set the Sequence list to empty
//    Returns:  void
//    Parameters: size (Size_t)
//----------------------------------------------------------------

Sequence::Sequence(size_t size) {
    this->head = nullptr;
    this -> tail = nullptr;

    SequenceNode* current = nullptr;

    for (int x = 0; x < size; x++) {
        SequenceNode* newNode = new SequenceNode();
        newNode -> next = nullptr;
        if (current != nullptr) {
            newNode -> prev = current;
            current -> next = newNode;
        }
        if (head == nullptr) {
            head = newNode;
        }
        tail = newNode;
        current = newNode;
        sizeOfSequence++;
    }
}

//----------------------------------------------------------------
// Sequence: the secondary constructor
//    Returns:  void
//    Parameters: s (Sequence&)
//-----------------------------------------------------------
Sequence::Sequence(const Sequence& s){

    SequenceNode* current;
    SequenceNode* temp;


    current = s.head;
    temp = s.head;

    SequenceNode* newNode = new SequenceNode(temp->item);
    head = newNode;
    current = newNode;
    sizeOfSequence++;
    temp = temp->next;
    while (temp != nullptr) {
        SequenceNode* newNodeB = new SequenceNode(temp->item);
        current -> next = newNodeB;
        newNodeB -> prev = current;
        current = current->next;
        current->next = nullptr;
        temp = temp->next;
        tail = newNodeB;
        sizeOfSequence++;
    }

}
//----------------------------------------------------------------
// ~Sequence: the destructor to call the clear function to empty the list
//    Returns:  void
//    Parameters: none
//-----------------------------------------------------------
Sequence::~Sequence() {
    clear();
}
//----------------------------------------------------------------
// operator=:  the = operator to set this linkedlist to equal the one in the parameter
//    Returns:  Sequence&
//    Parameters: s (Sequence&)
//-----------------------------------------------------------
Sequence& Sequence::operator=(const Sequence& s) {
     clear();
    SequenceNode* current;
    SequenceNode* temp;
    sizeOfSequence = 0;

    current = s.head;
    temp = s.head;
    if (current == nullptr) {
        return *this;
    }
    SequenceNode* newNode = new SequenceNode(temp->item);
    head = newNode;
    current = newNode;
    sizeOfSequence++;
    temp = temp->next;
    while (temp != nullptr) {
        SequenceNode* newNodeB = new SequenceNode(temp->item);
        current -> next = newNodeB;
        newNodeB -> prev = current;
        current = current->next;
        current->next = nullptr;
        temp = temp->next;
        tail = newNodeB;
        sizeOfSequence++;
    }

    return *this;
}
//----------------------------------------------------------------
// operator[]: the [] operator to return the item the position
//    Returns:  string&
//    Parameters: position (size_t)
//-----------------------------------------------------------
std::string& Sequence::operator[](size_t position) {

    if (!( position < sizeOfSequence)) {
        throw exception();
    }

    SequenceNode* current = head;
    for (int i = 0; i < position; i++) {
        current = current->next;
    }
    return current->item;
}

//----------------------------------------------------------------
// push_back: adding a new node with the string of "item" and putting it in the luist
//    Returns:  void
//    Parameters: item (string)
//----------------------------------------------------------------
void Sequence::push_back(std::string item) {

    SequenceNode* newNode = new SequenceNode(item);
    if (tail == nullptr) {
        head = newNode;
        tail = newNode;
    }
    else {
        tail -> next = newNode;
        newNode -> prev = tail;
        tail = newNode;
    }
    sizeOfSequence++;
}
//----------------------------------------------------------------
// pop_back: deleting the last node on the list
//    Returns:  void
//    Parameters: none
//----------------------------------------------------------------
void Sequence::pop_back() {
    if (sizeOfSequence <= 0) {
        throw exception();
    }
    SequenceNode* startingNode = tail;
    tail = tail->prev;
    tail -> next = nullptr;
    delete startingNode;
    sizeOfSequence--;
}
//----------------------------------------------------------------
// insert: adding a new node somewhere in the middle depending on the position
//    Returns:  void
//    Parameters: position (size_t), item (string)
//----------------------------------------------------------------
void Sequence::insert(size_t position, std::string item) {
    if (position >= 0 && position <= sizeOfSequence) {
        if (position == 0)
        {
            SequenceNode* Node = new SequenceNode(item);
            Node-> next = head;
            head -> prev = Node;
            head = Node;
            //sizeOfSequence++;
        }
        else{
            if (position >= sizeOfSequence) {
                throw exception();
            }

            SequenceNode* startingNode = head;
            SequenceNode* newNode = new SequenceNode(item);
            size_t locationOfPosition = 0;
            while (locationOfPosition < position) {
                startingNode = startingNode->next;
                locationOfPosition++;
            }
            newNode -> next = startingNode;
            newNode -> prev = startingNode->prev;
            startingNode-> prev -> next = newNode;
            startingNode -> prev = newNode;

            if (position == sizeOfSequence) {
                tail = newNode;
            }
            //sizeOfSequence++;
        }

        int rolls = 0;
        SequenceNode* current = head;
        tail = current;
        while (rolls < sizeOfSequence - 1) {
            if (current->next != nullptr) {
                current = current->next;
                tail = current;
            }
            rolls++;;
        }
    }
    else {
        throw exception();
    }
}
//----------------------------------------------------------------
// front: returning the item at the head of the lis
//    Returns:  string
//    Parameters: none
//----------------------------------------------------------------
std::string Sequence::front() const {
    if (sizeOfSequence <= 0) {
        throw exception();
    }
    string firstnodename = head->item;
    return firstnodename;
}
//----------------------------------------------------------------
// back: returning the string at the tail of the list
//    Returns:  string
//    Parameters: none
//----------------------------------------------------------------
std::string Sequence::back() const {
    if (sizeOfSequence == 0) {
        throw exception();
    }
    else {
        string lastnodename = tail->item;
        return lastnodename;
    }
}
//----------------------------------------------------------------
// empty: determining if the size of the list is 0 or noe
//    Returns:  bool
//    Parameters: none
//----------------------------------------------------------------
bool Sequence::empty() const {
    if (sizeOfSequence > 0) {
        return false;
    }
    return true;
}
//----------------------------------------------------------------
// size: returning the size of the list
//    Returns:  size_t
//    Parameters: none
//----------------------------------------------------------------
size_t Sequence::size() const {
    return sizeOfSequence;
}
//----------------------------------------------------------------
// clear: emptying the list by deleting all the nodes"
//    Returns:  none
//    Parameters:none
//----------------------------------------------------------------
void Sequence::clear() {
    SequenceNode* current = head;

    while (current != nullptr) {
        SequenceNode* nextToDie = current->next;
        delete current;
        current = nextToDie;
    }

    head = nullptr;
    tail = nullptr;
    sizeOfSequence = 0;
}
//----------------------------------------------------------------
// erase: deleting the node at a certain position"
//    Returns: void
//    Parameters: position (size_t)
//----------------------------------------------------------------
void Sequence::erase(size_t position) {
    SequenceNode* temp;
    SequenceNode* current = head;
    size_t x = 0;
    while (x != position) {
        current = current->next;
        x++;
    }
    temp = current;
    current->prev->next = current->next;
    current->next->prev = current->prev;

    delete temp;
    sizeOfSequence--;

}
//----------------------------------------------------------------
// erase: deleting a set of nodes at a certain start and end
//    Returns:  void
//    Parameters: position (size_t), count (size_t)
//----------------------------------------------------------------
void Sequence::erase(size_t position, size_t count) {

    if (position > sizeOfSequence || position < 0 ||count + position > sizeOfSequence || count < 0) {
        throw exception();
    }

    SequenceNode* current = head;
    size_t x = 0;
    while (x != position) {
        current = current->next;
        x++;
    }
    SequenceNode* ending = current;
    size_t y = 1;
    while (y != count) {
        ending = ending->next;
        y++;
    }
    if (position == 0) {
        SequenceNode* Currenta = head;
        SequenceNode* temps = Currenta;
        int T = 0;
        while (T < count) {

            Currenta = Currenta->next;
            head = Currenta;
            Currenta-> prev = nullptr;
            delete temps;
            temps = Currenta;
            T++;
        }
        return;
    }
    current-> prev ->next = ending->next;
    ending->next->prev = current -> prev;
    sizeOfSequence = sizeOfSequence - count;
}
//----------------------------------------------------------------
// operator<<: outputting all the items in each node on the list
//    Returns:  ostream&
//    Parameters: os (ostream&), s (Sequence)
//----------------------------------------------------------------
ostream& operator<<(ostream& os, const Sequence& s) {
    if (s.sizeOfSequence == 0) {
        os << "<>";
        return os;
    }
    SequenceNode* current = s.head;
    if (s.sizeOfSequence == 1) {
        os << "<" << s.head->item << ">>";
        return os;
    }
    os << "<" << current->item << ", ";
    while (current->next != nullptr) {
        current = current->next;
        os << current->item;
        if (current->next != nullptr) {
            os << ", ";
        }
    }

    os << ">";

    return os;
}