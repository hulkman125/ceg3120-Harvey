import java.util.Queue;

import net.lingala.zip4j.core.*;
import net.lingala.zip4j.exception.*;

public class PasswordTesting extends Thread {
    ZipFile Z;
    int testing;

    //Queue<String> threadsafeQueue = new ConcurrentLinkedQueue<>();

    public PasswordTesting(ZipFile Z, int testing){
        this.Z = Z;
        this.testing = testing;
    }
    
    public void run(){
        if( testing == 1){
            while(pswdQueue.threadsafeQueue.size() != 0 || FirstZizTest.isPasswordFound()){
                String password = pswdQueue.threadsafeQueue.poll();

                if(FirstZizTest.isPasswordFound() == false){
                    FirstZizTest.SetPassword(false);
                    FirstZizTest.setPassword(password);
                }
            }
        }
        else if(testing == 2){
            while(pswdQueue.threadsafeQueue.size() != 0 || FirstZizTest.isPasswordFound()){
                String password = pswdQueue.threadsafeQueue.poll();

                if(secondZizTest.isPasswordFound() == false){
                    secondZizTest.SetPassword(true);
                    secondZizTest.setPassword(password);
                }
            }
        }
    }
}