import java.util.Scanner;
/**
 * Program 
 * written by
 * Tyler
 * Raymond
 * Harvey
 */

public class Square extends Exception{

    /**
     * default constructor 
     * @param side is the length of the side
     */
    private double side; 
    
    public Square(double S) throws NegativeLengthException
    {
        /**
         * the parameter 
         * includes
         * 
         * @param S 
         */
        if(S < 0)
        {
            /**
             * creating my own 
             * exception class to 
             * handle negative 
             * numbers.
             */
            throw new NegativeLengthException("Negative length: " + S);
        }
        else{
            side = S;
        }
    }

    public String toString()
    {
        return "Square with side = " + side;
    }

    public double getPerimeter(){
        return side * 4;  // return the perimeter
    }

    public double getArea(){
        return side * side; // return the area
    }

    
    public static void main(String[] args){
        /**
         * The main method will 
         * prompt the user to enter a number to act
         * as the length of the side of a square.
         * Then will create an square object with your
         * input as its parameter. Then will output the 
         * perimeter and area of your square.
         */
        Scanner input = new Scanner(System.in);
        try{
            double squareSide = input.nextInt();
            Square sqr = new Square(squareSide);
            sqr.toString();
            System.out.println("The perimeter of the square is " + sqr.getPerimeter());  //perimeter
            System.out.println("The area of the square is " + sqr.getArea()); // area
        }
        /**
         * this catch block
         * will check if your input
         * is a negative number
         */
        catch(NegativeLengthException y)
        {
            System.out.println(y);
        }
        /**
         * thes catch block
         * will check if your input 
         * is anything but a number.
         */
        catch(Exception x)
        {
            System.out.println("Error: you must enter a number");
        }
    }
}