import java.util.ArrayList;

public class GeneratingRecursive extends Thread{ // a thread class
    private int length;
    
    /**
     * the constructor of
     * this class with a parameter of:
     * @param length of type int
     */
    public GeneratingRecursive(int length){
        this.length = length;
    }

   public void run(){
        ArrayList<String> qu = recurvie(length, "");
        for(int x = 0; x < qu.size(); x++){
            pswdQueue.threadsafeQueue.add(qu.get(x));
              }
   }
/**
     * creating a method that
     * will call itself with
     * a parameter of the following:
     * @param L of type int
     * @param password of type String
     */
   public ArrayList<String> recurvie(int L, String password){
    ArrayList<String> st = new ArrayList<>();
    if(L == 1){
        for(char let = 'a'; let <= 'z'; let++){
            st.add("" + let);
        }


        return st;
    }
    st = recurvie(L - 1, password);
    ArrayList<String> st2 = new ArrayList<>();
    for(int x = 0; x < st.size(); x++){
        
        for(char let = 'a'; let <= 'z'; let++){
            st2.add(st.get(x) + let);
        }
    }
    return st2;
   

   }
}