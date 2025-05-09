public class Matching {

    /**
     * Program written
     * by:
     * Tyler
     * Raymond
     * Harvey
     */

    /**
     * Parameter of
     * the main method:
     * @param args
     */
    public static void main(String[] args){

        String Paren = "(((x))"; // the string to check
        System.out.println(nestParen(Paren)); // printing out to see if it is tru or false using a recursion

    }

/**
 * The method
 * that will call
 * itself to see
 * if the string only contains
 * a matching pair of
 * opening and closing parenthesis
 * if so it will return 
 * true otherwise it will 
 * return false
 * 
 * @param n
 * @return boolean
 */
    public static boolean nestParen(String n){  // method to call a recursion
        if (n.equals("")){
            return true; // return false if the string is empty
        }
        else if(n.charAt(0) != '(' || n.charAt(n.length() - 1) != ')' ){
            return false; // return false if the first and last characters are matching parenthesis
        }
        else {
            /**
             * The string n 
             * equeals the 
             * parameter of n
             */
            String N = n;
            N = n.substring(1); // removing the first character
            N = N.substring(0, N.length() - 1); // removing the last character
            return nestParen(N); // calling the method again recursivaly
        }
    }
}