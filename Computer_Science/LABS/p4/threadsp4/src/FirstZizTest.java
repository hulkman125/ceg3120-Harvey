import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import java.nio.file.*;

import net.lingala.zip4j.core.*;
import net.lingala.zip4j.exception.*;
import net.lingala.zip4j.model.FileHeader;



/*
 * the class for 
 * testing the first 
 * zipfile 
 */
public class FirstZizTest {

    static public AtomicBoolean IsThePasswordFound = new AtomicBoolean(false);
    static String CorrectPassword = "";


    static public void FirstTest(){

        String FilePathA = "protected3.zip";
        int PasswordA = 3;
        int numThread = 8;

        try{
            PasswordTesting[] TestA = new PasswordTesting[numThread];
            GeneratingRecursive GRA = new GeneratingRecursive(PasswordA);
            String[] TemporaryFileA = new String[numThread];

            


            long StartTime = System.currentTimeMillis();
            
            GRA.start();
            GRA.join();
            List<String> lstA = pswdQueue.threadsafeQueue.subList(0, 2000);
            List<String> lstB = pswdQueue.threadsafeQueue.subList(2000, 4000);
            List<String> lstC = pswdQueue.threadsafeQueue.subList(4000,6000 );
            List<String> lstD = pswdQueue.threadsafeQueue.subList(6000,8000 );
            List<String> lstE = pswdQueue.threadsafeQueue.subList(8000,10000 );
            List<String> lstF = pswdQueue.threadsafeQueue.subList(12000,14000 );
            List<String> lstG = pswdQueue.threadsafeQueue.subList(14000,16000 );
            List<String> lstH = pswdQueue.threadsafeQueue.subList(16000,17576 );
            ArrayList<List> L = new ArrayList<>();

            L.add(lstA);L.add(lstB);L.add(lstC);L.add(lstD);L.add(lstE);L.add(lstF);L.add(lstG);L.add(lstH);
            for(int x = 0; x < numThread; x++){               
                TemporaryFileA[x] = (x + 1) + "-" + "practice.zip";
                Files.copy(Path.of(FilePathA), Path.of(TemporaryFileA[x]));
                ZipFile ZA = new ZipFile(TemporaryFileA[x]); //https://docs.oracle.com/javase/8/docs/api/java/util/zip/ZipFile.html  
                TestA[x] = new PasswordTesting(ZA, 1,L.get(x), x );
            }
            //System.out.println(pswdQueue.threadsafeQueue.size());

            for(int x = 0; x < numThread; x++){
                TestA[x].start();
            }
            
            for(int x = 0; x < numThread; x++){
                TestA[x].join();
            }

            
            long EndTime = System.currentTimeMillis();
            System.out.println((EndTime - StartTime) + " milliceconds to finish!!!");


            

            for(int x = 0; x < pswdQueue.threadsafeQueue.size(); x++){
                try {
                    //System.out.println("possible passwords are: "+pswdQueue.threadsafeQueue.get(x));
                }catch(Exception e){}  
            }

            
            
               
            //System.out.println(CorrectPassword);
            if(isPasswordFound()){
                //System.out.println("step 0 done");
                System.out.println("The password for the First zipfile is: " + CorrectPassword);
                //xtractZIP(new ZipFile("zipfiles/"), CorrectPassword);
                
            }
            else{
                System.out.println("Can not find the password for the first zipfile"); 
            }

            for(int x = 0; x < numThread; x++){
                Files.delete(Path.of(TemporaryFileA[x]));
            }
            //System.out.println("step 2 done");
        }catch(Exception e){
            System.out.println("ERROR for first file! " + e);
            e.printStackTrace();
        }
    }
    /**
     * The xtractZIP method
     * with a return type of:
     * @return boolean 
     * and 2 parameter of:
     * @param z of type ZipFile and 
     * @param password of type String
     */
    public static boolean xtractZIP(ZipFile z, String password){
        try{
            z.setPassword(password);
            z.extractAll("contents/");
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
    static public void SetPassword(boolean b){

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
    static public boolean isPasswordFound(){
        return IsThePasswordFound.get();
    }
    /**
     * The setPassword method with 
     * a return type of void
     * with a parameter of:
     * @param PW of type string
     */
    static public void setPassword(String PW){
        CorrectPassword = PW;
    }
}