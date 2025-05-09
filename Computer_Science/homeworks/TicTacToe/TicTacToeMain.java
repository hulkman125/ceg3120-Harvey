import javax.swing.JFrame;

public class TicTacToeMain{
    public static void main(String[] args){
        TicTacToeGame gameframe = new TicTacToeGame();
        gameframe.setSize(500,500);
        gameframe.setTitle("TicTacToe");
        gameframe.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        gameframe.setVisible(true);
    }
}