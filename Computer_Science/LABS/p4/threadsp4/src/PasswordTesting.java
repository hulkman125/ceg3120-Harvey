import java.util.List;
import java.util.Queue;

import net.lingala.zip4j.core.*;
import net.lingala.zip4j.exception.*;

public class PasswordTesting extends Thread { // a thread class
    ZipFile Z;
    int testing;
    List<String> lst;
    int ID;
    

    //Queue<String> threadsafeQueue = new ConcurrentLinkedQueue<>();
    /**
     * constructor with the 
     * following parameters
     * @param Z of type Zipfile
     * @param testing of type int
     * @param lst of type List
     * @param ID of type int
     */
    public PasswordTesting(ZipFile Z, int testing, List<String> lst, int ID){
        this.Z = Z;
        this.testing = testing;
        this.lst = lst;
        this.ID = ID;
       
    }
    
    public void run(){
        if( testing == 1){
            for(int x = 0; x < lst.size() && !FirstZizTest.isPasswordFound(); x++){ // if FirstZizTest is calling do this
                try {
                    String password = lst.get(x);
                    if(FirstZizTest.isPasswordFound() == false){

                        if(FirstZizTest.xtractZIP(Z, password)){
                            FirstZizTest.IsThePasswordFound.set(true);
                            FirstZizTest.CorrectPassword = password;
                        }
                    }
                }
                catch (IndexOutOfBoundsException e) {}
            }
        }
        else if(testing == 2){ // if the secondZizTest is calling do this
            for(int x = 0; x <lst.size() && !secondZizTest.isPasswordFound(); x++){
                try{
                    String password = lst.get(x);
                    if(secondZizTest.isPasswordFound() == false){

                        if(secondZizTest.xtractZIP(Z, password, ID )){
                            secondZizTest.IsThePasswordFound.set(true);
                            secondZizTest.CorrectPassword = password;
                        }
                    }
                }
                catch (IndexOutOfBoundsException e){}            
            }
        }
    }
}