

import java.io.InputStream;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.zip.ZipFile;
import java.nio.file.*;
import java.util.List;
import net.lingala.zip4j.core.*;
import net.lingala.zip4j.exception.*;
import net.lingala.zip4j.model.FileHeader;

/*
 * the class for 
 * testing the second 
 * zipfile 
 */
public class secondZizTest {

    static public AtomicBoolean IsThePasswordFound = new AtomicBoolean(false);
    static String CorrectPassword = "";

    static public void SecondTest(){
        String FilePathB = "ProtectedFiles/protected5.zip";
        String FilePathC = "p4/";
        int passwordB = 5;
        int NumberOfThreads = 10;

        try {

            PasswordTesting[] TestB = new PasswordTesting[NumberOfThreads];
            GeneratingRecursive GRB = new GeneratingRecursive(passwordB);
            String[] TemporaryFileB = new String[NumberOfThreads];

            for(int x = 0; x < NumberOfThreads; x++){ // for the second zip file
                TemporaryFileB[x] = (x + 1) + "-" + FilePathC;
                Files.copy(Path.of(FilePathB),Path.of("/temps"));
                ZipFile ZB = new ZipFile(FilePathC + "/" + TemporaryFileB[x]);
                TestB[x] = new PasswordTesting(ZB, 2);
            }

            long StartTime = System.currentTimeMillis();

            GRB.start();
            for(int x = 0; x < NumberOfThreads; x++){
                TestB[x].start();
            }

            long EndTime = System.currentTimeMillis();
            System.out.println((EndTime - StartTime) + "milliceconds to finish!!!");

            if(isPasswordFound()){
                System.out.println("The password for the First zipfile is: " + CorrectPassword);
            }
            else{
                System.out.println("Can not find the password for the first zipfile");
            }

            for(int x = 0; x < NumberOfThreads; x++){
                Files.delete(Path.of("" + TemporaryFileB));
            }
        }catch(Exception e){
            System.out.println("ERROR for second file! " + e);
        }
    }

    public boolean IsPasswordCorrect(ZipFile z, String password){
        try{
            
            if(z.isEncrypted()){
                z.setPassword(password);
            }

                List<FileHeader> fileheaders= new z.getFileHeaders();

                for(FileHeader FH: fileheaders){
                    try {
                        InputStream IS = z.getInputStream(FH);
                        byte[] Bite = new byte[4 * 4096];
                        while(IS.read(Bite) != -1){} // this checks to see if the password is ok
                        IS.close();
                    }catch (Exception e){
                        return false;
                    }
                }
        } catch(Exception e){
            return false;
        }
    }

    public boolean xtractZIP(ZipFile z, String password){
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