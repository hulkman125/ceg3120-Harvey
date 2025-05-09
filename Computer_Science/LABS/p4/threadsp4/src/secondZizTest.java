import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import java.nio.file.*;
import net.lingala.zip4j.core.*;
import net.lingala.zip4j.exception.*;
import net.lingala.zip4j.model.FileHeader;

//please do note that this class takes much longer to fully run the the firstZizclass on my computer
// making 4 threads runs faster than 3

/*
 * the class for 
 * testing the second 
 * zipfile 
 */
public class secondZizTest {

    /**the automic boolean 
     * variableto check if the 
     * password for the zipfile is correct*/
    static public AtomicBoolean IsThePasswordFound = new AtomicBoolean(false); 
    static String CorrectPassword = ""; // the password that will be used

    static public void SecondTest(){

        String FilePathB = "protected5.zip";
        int passwordB = 5; // number of characters in the password
        int numThread = 8; // number of threads

        

        try{
            /**
             * creating multiple threads 
             * for testing your password(8 total) 
             * and another thread for creating many possible 
             * passwords with a paramater of 5 to 
             * display that the password has 5 characters
             */
        PasswordTesting[] TestB = new PasswordTesting[numThread]; 
        GeneratingRecursive GRB = new GeneratingRecursive(passwordB);


        String[] TemporaryFileB = new String[numThread]; // the temporary files that we will create


        long StartTime = System.currentTimeMillis();// initializing the start of the SystemTime

        // starting and stoping the recursive thread
        GRB.start(); 
        GRB.join();
        //creating multiple subsets to store multiple threads
        List<String> lstA = pswdQueue.threadsafeQueue.subList(0, 1400000);
        List<String> lstB = pswdQueue.threadsafeQueue.subList(1400000, 2800000);
        List<String> lstC = pswdQueue.threadsafeQueue.subList(2800000,4200000 );
        List<String> lstD = pswdQueue.threadsafeQueue.subList(4200000,5600000 );
        List<String> lstE = pswdQueue.threadsafeQueue.subList(5600000,7000000 );
        List<String> lstF = pswdQueue.threadsafeQueue.subList(7000000,8400000 );
        List<String> lstG = pswdQueue.threadsafeQueue.subList(8400000,9800000 );
        List<String> lstH = pswdQueue.threadsafeQueue.subList(980000,11881376 );
        ArrayList<List<String>> L = new ArrayList<>(); //adding them to an arraylist
        //11,881,376 possible passwords
        L.add(lstA);L.add(lstB);L.add(lstC);L.add(lstD);L.add(lstE);L.add(lstF);L.add(lstG);L.add(lstH);
            for(int x = 0; x < numThread; x++){ // for the second zip file
                TemporaryFileB[x] = (x + 1) + "-" + "practiceb.zip";
                Files.copy(Path.of(FilePathB),Path.of(TemporaryFileB[x]));
                ZipFile ZB = new ZipFile(TemporaryFileB[x]);
                TestB[x] = new PasswordTesting(ZB, 2, L.get(x), x);
            }
            //System.out.println(pswdQueue.threadsafeQueue.size());
            

            
            for(int x = 0; x < numThread; x++){
                TestB[x].start();
            }

            for(int x = 0; x < numThread; x++){
                TestB[x].join();
            }

            long EndTime = System.currentTimeMillis(); // ending the timing process
            System.out.println((EndTime - StartTime) + " milliceconds to finish!!!"); // outputing how long it took for the threads to work

            for(int x = 0; x < pswdQueue.threadsafeQueue.size(); x++){
                try {
                    //System.out.println("possible passwords are: "+pswdQueue.threadsafeQueue.get(x));
                }catch(Exception e){}  
            }
            System.out.println(CorrectPassword);
            if(isPasswordFound()){
                System.out.println("The password for the Second zipfile is: " + CorrectPassword); //outputing the Password
            }
            else{
                System.out.println("Can not find the password for the Second zipfile");
            }

            for(int x = 0; x < numThread; x++){
                Files.delete(Path.of(TemporaryFileB[x])); //deleting the temporary files
            }
        }catch(Exception e){
            System.out.println("ERROR for second file! " + e);
            e.printStackTrace();
        }
    
    }
    public static boolean xtractZIP(ZipFile z, String password, int ID){ // method for checking if the password is correct for the zipfile
        try{
            z.setPassword(password);
            // do note this will take forever to load
            z.extractAll("contents-" + ID);
            return true;
        }
        catch (Exception e){
            return false;
        }
    }

    /**
     *  The setPassword 
     * method with a return type of
     * boolean with a parameter of:
     * @param b of type boolean
     */
    static public void SetPassword(boolean b){ // change the automic boolean if the password is found
        if(b == true){
            IsThePasswordFound.set(true);
        }else {
            IsThePasswordFound.set(false);
        }
    }
    /**
     * The isPasswordFound
     * with a return type of: 
     * @return boolean
     */
    static public boolean isPasswordFound(){ // is the password found or not
        return IsThePasswordFound.get();
    }
    /**
     * The setPassword method with 
     * a return type of void
     * with a parameter of:
     * @param PW of type string
     */
    static public void setPassword(String PW){ //set the password 
        CorrectPassword = PW;
    }
}