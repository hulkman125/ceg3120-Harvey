import java.util.ArrayDeque;
import java.util.LinkedList;
import java.util.Queue;

/**Program 
 * Written by
 * @author:
 * Tyler
 * Raymond
 * Harvey
 */


public class TileGame {

    public static void main(String[] args){
        /**
         * making an ArrayDeque 
         * and adding 3 elements
         * to it
         */
        ArrayDeque<Integer> stack = new ArrayDeque<Integer>();
            stack.push(3); stack.push(2); stack.push(1);
            /**
             * making a Queue 
             * and adding multiple elements 
             * to it
             */
        Queue<Integer> queue = new LinkedList<Integer>();
            queue.offer(1); queue.offer(2); queue.offer(2);
            queue.offer(1); queue.offer(3); queue.offer(1);
            queue.offer(2); queue.offer(1); queue.offer(2);
            queue.offer(3);

        System.out.println("It took " + tileGame(stack, queue) + " truns to finish this game!");
    }

    /**
     * This method uses 
     * the following parameters:
     * @param stack
     * @param queue
     * as groups of numbers to 
     * return the number of turns 
     * that was used with 
     * the following return type:
     * @return int
     */
    public static int tileGame(ArrayDeque<Integer> stack, Queue<Integer> queue){
        int counter = 0;
        /**
         * uses the while loop to
         * check to see if the stack 
         * is not empty otherwise
         * the number of turns will increase
         * and if the number that was popped from the stack was
         * either a 1 or 2, the stack will pop again
         */
        while(!stack.isEmpty()){
            counter++;
            int checkNumber = stack.pop();
            if(checkNumber == 1 || checkNumber == 2){
                for(int x = 0; x < checkNumber; x++){
                    stack.pop();
                }
            }
            else{
                /**
                 * if the number is 3, the removed
                 * numbers will be added to the stack.
                 */
                for(int a = 0; a < checkNumber; a++){

                    stack.push(queue.poll());                    
                }
            }
        }
        /**
         * this will
         * return the 
         * number of 
         * turns that
         * was used.
         */
        return counter;
    }
}