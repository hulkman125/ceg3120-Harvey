import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JTextField;
import javax.swing.border.EmptyBorder;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import javax.swing.*; 
/**
 * Program 
 * written by
 * @author:
 * Tyler 
 * Raymond
 * Harvey
 */
public class gettingwarmer extends JFrame {
/**
 * 
 * @param args
 */
public static void main(String[] args) {
   
    /**
     * the objects that
     * are used to 
     * be set into 
     * the frame
     */
    JFrame frame = new JFrame("Conversion!"); //window
    JLabel FAR_Label = new JLabel("Farenhiet");//Farenhight label
    JLabel CEL_Label = new JLabel("Celcius");//Celcius label
    JTextField FAR_TextField = new JTextField(8);// Farenhight textfield
    JTextField CEL_TextField = new JTextField(8);//Celcius textfield
    JButton BUTTON = new JButton("Convert!"); //button to convert

    /**
     * creating the panel
     * with the proper padding
     * and adding each object above
     * to the panel
     */
    JPanel panel = new JPanel(new GridLayout(3,2, 20, 70)); // creating the JPanel with the GridLayout manager
    panel.add(FAR_Label);
    panel.add(FAR_TextField);
    panel.add(CEL_Label);
    panel.add(CEL_TextField);
    panel.add(BUTTON);
    panel.setBorder(new EmptyBorder(30, 30, 30, 30));

    /**
     * the Action listener to 
     * the button to 
     * convert farenhight
     * to celsius
     */
    class ButtonListener implements ActionListener {
        @Override
        /**
         * @param e //the parameter that is used 
         *       to for the event, such as the 
         *       source of the object
         */
        public void actionPerformed (ActionEvent e){
            try {
                if(FAR_TextField.getText().isEmpty()) // in user leaves label empty
                {
                    CEL_TextField.setText("Empty Input");// output if label is empty
                }
                else {
                    /**
                     * converting 
                     * farenhight
                     * to celcius
                     */
                    String A = FAR_TextField.getText();
                    double B = Double.parseDouble(A);
                    double CS = (((B - 32) * 5) / 9);
                    String D = String.valueOf(CS);
                    CEL_TextField.setText(D);  // output
                }
            }catch(Exception x){ // if the label has invalid input  
                CEL_TextField.setText("Invalid Input"); // output
            }
        }
    }
    ButtonListener myListener = new ButtonListener(); // creating your action listener
    BUTTON.addActionListener(myListener); // adding the action listener to my button

    frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE); // ends program if window is closed
    frame.setSize(500,300); // setting the size of the window
    frame.getContentPane().add(panel); // adding the Jpanel to the JFrame
    frame.setVisible(true);// making the frame visible
    }
}