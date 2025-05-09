import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class pswdQueue {

    static List<String> threadsafeQueue = Collections.synchronizedList(new ArrayList<>()); //arraylist for storing possible passwords

    /**
     * the method to 
     * add elements to my 
     * Arraylist with
     * a parameter of:
     * @param Q of type string
     */
    public void addToQueue(String Q){ // adding to the arraylist
        threadsafeQueue.add(Q);
    }
    public static String GetQueue(){ // returning and removing the first element in the arraylist
        String x = threadsafeQueue.get(0);
        threadsafeQueue.remove(0);
        return x;
    }

    public int getSize(){ //returning the size of the arraylist
        return threadsafeQueue.size();
    }
}