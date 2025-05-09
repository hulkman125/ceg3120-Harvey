import javax.swing.*;
//import javafx.scene.layout.*;
//import javafx.application.Application;
import java.util.concurrent.TimeUnit;
import java.awt.event.ActionListener;
import java.util.ArrayList;
import javax.swing.plaf.DimensionUIResource;
import java.awt.*;
import java.util.ArrayList;
import java.util.List;
import javax.awt.event.ActionEvent;
import java.io.FileInputStream;
import javazoom.jl.player.Player;
import javazoom.jl.decoder.JavaLayerException;
import java.awt.event.*;
import javax.swing.Timer;

public class Game extends JFrame
{
    // declaring the first 2 buttons you flip over 
    JButton firstBtn;
    JButton secondBtn;
    Timer timer;

    int bntcount = 0;  // to see how many buttons are pressed
    int wrongChoices = 0; // the number of incorect pairs
    int SC = 0; // the overall score

    JTextField display;
    
    public Game(){
        display = new JTextField("");
        display.setEditable(false);
        setSize(800,750);
        setLocationRelativeTo(null);
        createPanel();
        
    }

    private void createPanel(){

        //making a window to display your message
        JOptionPane.showMessageDialog(null, "Turn over 2 cards and see if they match." + "\n" +
        "If the Images match, they will be disabled, otherwise they'll be turned back down." + "\n" +
        "You will Start with 150 points\n" + 
        "For every pair you get wrong, you'll lose 5 points. \n" +
          "The fewer mismatches you make, the higher your score will be.", "Directions",JOptionPane.PLAIN_MESSAGE);
        
          JOptionPane.showMessageDialog(null, "Good luck\nand may the force be with you!", "Message", JOptionPane.PLAIN_MESSAGE);

        // Code for the top Panel/////////////////////////////////////////////
        Container mainContainer = this.getContentPane();
        JPanel topPanel = new JPanel();
        topPanel.setBackground(Color.BLACK);
        topPanel.setLayout( new BoxLayout(topPanel, BoxLayout.X_AXIS));
        topPanel.add(Box.createHorizontalGlue());
        ImageIcon SithCode = new ImageIcon("SithCode.jpeg");
        topPanel.add(new JLabel(SithCode));
        topPanel.add(Box.createHorizontalGlue());
        topPanel.setPreferredSize(new Dimension(600,100));
        mainContainer.add(topPanel, BorderLayout.NORTH);
        ///////////////////////////////////////////////////////////////////////////////

        //////Code for the Middle Panel//////////////////////////////////////
        /*
         * the images 
         * for each button 
         * are made here!!
         */
        ImageIcon sith = new ImageIcon("sith.jpeg");
        ImageIcon DarthBane = new ImageIcon("Darth_Bane.jpg");
        ImageIcon DarthMaul = new ImageIcon("Darth_Maul.jpg");
        ImageIcon DarthNihilus = new ImageIcon("Darth_Nihilus.jpg");
        ImageIcon DarthPlagueis = new ImageIcon("Darth_Plagueis.jpg");
        ImageIcon DarthRaven = new ImageIcon("Darth_Revan.jpg");
        ImageIcon DarthSideous = new ImageIcon("Darth_Sideous.jpg");
        ImageIcon DarthTenabris = new ImageIcon("Darth_Tenabris.jpg");
        ImageIcon DarthTyranous = new ImageIcon("Darth_Tyrannous.jpg");
        ImageIcon DarthVader = new ImageIcon("Darth_Vader.jpg");
        ImageIcon DarthZannah = new ImageIcon("Darth_Zannah.jpg");
        ImageIcon KyloRen = new ImageIcon("Kylo_Ren.jpg");
        ImageIcon Ventress = new ImageIcon("Ventress.jpg");
        
        /*
         * creatng an 
         * arrayList of 
         * ImageIcons and placing
         * 2 of each of the sith images
         * to one of the buttons
         */
        ArrayList <ImageIcon> PICS = new ArrayList<ImageIcon>();
        PICS.add(DarthBane);PICS.add(DarthBane);
        PICS.add(DarthMaul);PICS.add(DarthMaul);
        PICS.add(DarthNihilus);PICS.add(DarthNihilus);
        PICS.add(DarthPlagueis);PICS.add(DarthPlagueis);
        PICS.add(DarthRaven);PICS.add(DarthRaven);
        PICS.add(DarthSideous);PICS.add(DarthSideous);
        PICS.add(DarthTenabris);PICS.add(DarthTenabris);
        PICS.add(DarthTyranous);PICS.add(DarthTyranous);
        PICS.add(DarthVader);PICS.add(DarthVader);
        PICS.add(DarthZannah);PICS.add(DarthZannah);
        PICS.add(KyloRen);PICS.add(KyloRen);
        PICS.add(Ventress);PICS.add(Ventress);

        ImageIcon[] IMLST = new ImageIcon[24]; // creating an array of immages

        /*
         * shufffling the 
         * array IMLST
         * before being set 
         * on a button
         */
        for(int a = 0; a < 24; a++)
        {
            int num = (int)((Math.random() * PICS.size()) + 1);

            IMLST[a] = PICS.get(num - 1);
            PICS.remove(num - 1);
        }

        
        //mainContainer.setLayout(new BorderLayout(5,4));
        this.getRootPane().setBorder(BorderFactory.createMatteBorder(20, 20, 20, 20, Color.red));
        JPanel gridPanel = new JPanel();
        gridPanel.setLayout(new GridLayout(4,5,5,5));
        mainContainer.add(gridPanel, BorderLayout.CENTER);

        JButton[] List4Buttons = new JButton[24]; // creating an arrayList of JButtons
        for(int B = 0; B < 24; B++)
        {
            List4Buttons[B] = new JButton();
            gridPanel.add(List4Buttons[B]);
            List4Buttons[B].setName(Integer.toString(B)); // giving each button an integer to be matched with when the event happens
            List4Buttons[B].setIcon(sith); // setting the Sith icon to the button as default
        }
        ////End of code for the middle panel///////////////////////////////////////////////////////////

        ///Creating the bottom panel/////////////////////////////////////
        JPanel BottomPanel = new JPanel();
        BottomPanel.setBackground(Color.BLACK);
        BottomPanel.setLayout(new FlowLayout(5));
        BottomPanel.setPreferredSize(new Dimension(600, 80));
        mainContainer.add(BottomPanel, BorderLayout.SOUTH);
        ImageIcon iamsith = new ImageIcon("IAmSith.jpg");
        BottomPanel.add(new JLabel(iamsith));
        BottomPanel.add(Box.createHorizontalGlue());
        BottomPanel.setPreferredSize(new Dimension(600,100));
        ///end of bottom panel/////////////////////////////////////////
        
        

        class ButtonListener implements ActionListener{ // the action Listener for pressing each button
            private int indexNumberA = 0; 
            private int indexNumberB = 0;

            @Override
            public void actionPerformed(ActionEvent e) {
                if(bntcount == 0) { //if bntcount is 0
                    bntcount++; //increment
                    firstBtn = (JButton)e.getSource(); //figuring out which button got pressed
                    indexNumberA = Integer.valueOf(firstBtn.getName()); // using the number we set earlier for the button to find the index value of List4buttons
                    
                    //indexNumberA = findIndex(IMLST, e.getSource()); // takes the index number from your button in the array
                    List4Buttons[indexNumberA].setIcon(IMLST[indexNumberA]); // uses that number to set the icon image of the same number
                }
                else if(bntcount == 1){ // if the btncount is 1
                    if(firstBtn != e.getSource()){ // finding the source of the button clicked.
                        bntcount++; //increment
                        secondBtn = (JButton)e.getSource(); //figuring out which button got pressed
                        indexNumberB = Integer.valueOf(secondBtn.getName()); // using the number we set earlier for the button to find the index value of List4buttons
                        List4Buttons[indexNumberB].setIcon(IMLST[indexNumberB]); ////uses that number to set the icon image of the same number
                        timer = new Timer(1500, new ActionListener() { // making a timer to wait 1.5 seconds after the second card is flipped
                            @Override public void actionPerformed(ActionEvent e) {                            
                                        if(firstBtn.getIcon() != secondBtn.getIcon()){ // if the 2 buttons do not match
                                            //flipping the 2 buttons back over
                                            firstBtn.setIcon(sith); 
                                            secondBtn.setIcon(sith);
                                            bntcount = 0;
                                            wrongChoices++; // increasing the wrong choices number
                                        }
                                        else{
                                            //turning both buttons off if the images match
                                            firstBtn.setEnabled(false);
                                            secondBtn.setEnabled(false);
                                            bntcount = 0; // resseting the button count to 0
                                            
                                            boolean allFalse = true;
                                            // checking to see if all the buttons are disabled
                                            for (JButton btn: List4Buttons) {
                                                if (btn.isEnabled()) {
                                                    allFalse = false;
                                                    break;
                                                }
                                            }
                                            if (allFalse) {
                                                SC = 150 - (wrongChoices * 5); //calculating the overall score
                                                if(SC < 0)
                                                {
                                                    SC = 0; //the score must never be a negative number
                                                }
                                                /*
                                                 * Dislpaying a message Box
                                                 * to show your score
                                                 */
                                                JOptionPane.showMessageDialog(null, "Congratulations your score is:-----------" + SC,"Score", JOptionPane.PLAIN_MESSAGE);
                                                JOptionPane.showMessageDialog(null,"Oh and remember" + 
                                                "\nThe Force will be with you, ALWAYS");  //and for fun
                                            }
                                             
                                            }
                                            
                                        timer.stop();
                                    }
                                    
                                });
                                timer.start();
                                
                            }
                        }
                    }
                }
        ButtonListener myListener = new ButtonListener(); //declaring my actionListener
        for(int x = 0; x < 24; x++){
            List4Buttons[x].addActionListener(myListener);// assigning each button to my actionListener
        }
    }
}


