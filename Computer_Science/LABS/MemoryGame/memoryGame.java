import javax.sound.sampled.AudioSystem;
import javax.sound.sampled.Clip;
import javax.swing.JFrame;
import javax.swing.JPanel;
import javafx.scene.layout.*;
import javafx.application.Application;
import java.util.ArrayList;
import java.awt.*;
import java.io.File;
import java.io.FileInputStream;
import javazoom.jl.player.Player;
import javazoom.jl.decoder.JavaLayerException;



/**
 * Program
 * written by
 * @author:
 * Tyler
 * Raymond
 * Harvey
 */

public class memoryGame
{
    public static void main(String[] args)
    {
      JFrame sithFrame = new Game();
      sithFrame.setTitle("Memory Game for the SITH!");
      sithFrame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
      sithFrame.setVisible(true);

      File clap = new File("march.wav"); // The Imperial March music
      PlaySound(clap); // Playing the Imperial March
    }
    static void PlaySound(File sound){
      try{
        Clip clip = AudioSystem.getClip();
        clip.open(AudioSystem.getAudioInputStream(sound));
        clip.start(); // starting the music
        Thread.sleep(clip.getMicrosecondLength()/1000);
      }catch(Exception e){}
    }
}