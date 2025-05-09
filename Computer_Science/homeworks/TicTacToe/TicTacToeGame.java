import java.awt.BorderLayout;
import java.awt.GridLayout;
import java.awt.event.ActionListener;
import javax.swing.BorderFactory;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;

public class TicTacToeGame extends JFrame implements ActionListener{
/*
 * Program 
 * Written by
 * Tyler
 * Raymond
 * Harvey
 */

    private Boolean Player1 = true;
    public TicTacToeGame(){

        createPanel();
    }

    /* 
     * Default constructor
    */
    public void createPanel(){
       

        /*content JPanel
         * and adding it to
         * the CenterPanel
         */
        JPanel content = new JPanel();
        content.setLayout(new BorderLayout());
        this.setContentPane(content);
        content.setBorder(BorderFactory.createEmptyBorder(0,10,10,10));
        /*
         * making a Jlabel 
         * and adding it to the 
         * South Panel 
         * and adding the 
         * South Panel to the 
         * content
         */
        JPanel SouthPanel = new JPanel();
        JLabel label = new JLabel("Game status");
        SouthPanel.add(label);
        content.add(SouthPanel, BorderLayout.SOUTH);
        
        /*
         * making a CenterPanel 
         * and adding a Border Layout 
         * to it with the buttons
         */
        JPanel CenterPanel = new JPanel();
        content.add(CenterPanel, BorderLayout.CENTER);
        CenterPanel.setLayout(new GridLayout(3,3)); // adding the layout
        for(int x = 1; x < 10; x++){
            /*
             * adding the buttons 
             * along with the 
             * event listener
             */
            JButton test = new JButton(Integer.toString(x));
            test.addActionListener(e->{
                /*
                 *  if the button 
                 * pressed is not X 
                 * or O the number 
                 * will change
                 */
                if(test.getText() != "X" && test.getText() != "O") 
                {
                    String pressed = test.getText();                
                    if(Player1 == true){
                        test.setText("X");
                        label.setText("Player 2 turn"); // change the players turn
                    }
                    else {
                        test.setText("O");
                        label.setText("Player 1 turn"); // change the players turn
                    }
                    if(Player1 == true)
                    {Player1 = false;} // changeing the boolean value for the players turn
                    else
                    {Player1 = true;} // changeing the boolean value for the players turn
                }
            });
            CenterPanel.add(test);
            
                
        }
        
    }
}