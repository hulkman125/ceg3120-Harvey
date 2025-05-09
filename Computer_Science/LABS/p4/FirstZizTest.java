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

        String FilePathA = "ProtectedFiles/protected3.zip";
        int PasswordA = 3;
        int numThread = 10;

        try{
            PasswordTesting[] TestA = new PasswordTesting[numThread];
            GeneratingRecursive GRA = new GeneratingRecursive(PasswordA);
            String[] TemporaryFileA = new String[numThread];


            for(int x = 0; x < numThread; x++){
                TemporaryFileA[x] = (x + 1) + "-" + "practice";
                Files.copy(Path.of(FilePathA), Path.of("temps/" + TemporaryFileA[x]));
                ZipFile ZA = new ZipFile("temps/" + TemporaryFileA[x]); //https://docs.oracle.com/javase/8/docs/api/java/util/zip/ZipFile.html
                //^the problem is up here^            
                TestA[x] = new PasswordTesting(ZA, 1);
            }


            long StartTime = System.currentTimeMillis();

            
            GRA.start();
            for(int x = 0; x < numThread; x++){
                TestA[x].start();
            }
            
            GRA.join();

            for(int x = 0; x < numThread; x++){
                TestA[x].join();
            }

            long EndTime = System.currentTimeMillis();
            System.out.println((EndTime - StartTime) + " milliceconds to finish!!!");

            for(int x = 0; x < pswdQueue.threadsafeQueue.size(); x++){
                try {
                    System.out.println(pswdQueue.threadsafeQueue.poll());
                }catch(Exception e){}
                
            }

            System.out.println(CorrectPassword);
            if(isPasswordFound()){
                System.out.println("step 0 done");
                System.out.println("The password for the First zipfile is: " + CorrectPassword);
                xtractZIP(new ZipFile("zipfiles/"), CorrectPassword);
            }
            else{
                System.out.println("Can not find the password for the first zipfile"); 
            }

            
            
            for(int x = 0; x < numThread; x++){
                Files.delete(Path.of("p4/temps/" + TemporaryFileA));
            }
            System.out.println("step 2 done");
        }catch(Exception e){
            System.out.println("ERROR for first file! " + e);
        }
    }

    

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

    static public void SetPassword(boolean b){

        if(b == true){
            IsThePasswordFound.set(true);
        }else {
            IsThePasswordFound.set(false);
        }
    }

    static public boolean isPasswordFound(){
        return IsThePasswordFound.get();
    }

    static public void setPassword(String PW){
        CorrectPassword = PW;
    }
}