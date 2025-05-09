public class GeneratingRecursive extends Thread{
    private int length;

    public GeneratingRecursive(int length){
        this.length = length;
    }

   public void run(){
        recurvie(length, "");
   }

   public void recurvie(int L, String password){

    if(L == 0){
        pswdQueue.threadsafeQueue.add(password);
        return;
    }
    for(char LT = 'a'; LT < 'z'; LT++){
        
        password += LT;
        System.out.println("recursive" + password);
        recurvie(L - 1, password);
    }

   }
}