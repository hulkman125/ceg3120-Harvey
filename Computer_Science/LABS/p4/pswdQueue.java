import java.util.concurrent.ConcurrentLinkedQueue;

public class pswdQueue {

    static ConcurrentLinkedQueue<String> threadsafeQueue = new ConcurrentLinkedQueue<>();


    public void addToQueue(String Q){
        threadsafeQueue.add(Q);
    }

    public String GetQueue(){
        return threadsafeQueue.poll();
    }

    public int getSize(){
        return threadsafeQueue.size();
    }
}