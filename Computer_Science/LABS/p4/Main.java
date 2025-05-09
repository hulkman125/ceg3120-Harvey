import java.io.InputStream;
import java.util.concurrent.atomic.AtomicBoolean;


import net.lingala.zip4j.core.*;
import net.lingala.zip4j.exception.*;

public class Main{

    
    /*static public AtomicBoolean IsThePasswordFound = new AtomicBoolean(false);
    static String CorrectPassword = "";*/

    /**
     * The main method 
     * where all the stuff
     * begins, with a parameter of: 
     * @param args
     */
    public static void main(String[] args){

        FirstZizTest.FirstTest();
        //secondZizTest.SecondTest();

        /*
        String FilePathA = "p4/Protected3.zip";
        String FilePathB = "p4/Protected5.zip";
        String FilePathC = "p4/";

        int PasswordA = 3;
        int passwordB = 5;

        int NumberOfThreads = 10;

        try {
            PasswordTesting[] TestA = new PasswordTesting[NumberOfThreads];
            PasswordTesting[] TestB = new PasswordTesting[NumberOfThreads];

            GeneratingRecursive GRA = new GeneratingRecursive(PasswordA);
            GeneratingRecursive GRB = new GeneratingRecursive(passwordB);

            String[] TemporaryFileA = String[NumberOfThreads];
            String[] TemporaryFileB = String[NumberOfThreads];

            for(int x = 0; x < NumberOfThreads; x++){ // for the first zip file
                TemporaryFileA[x] = (x + 1) + "-" + FilePathC;
                Files.copy(Path.of(FilePathA),Path.of(FilePathC +"/temps"));
                ZipFile ZA = new ZipFile(FilePathC + "/" + TemporaryFileA[x]); //https://docs.oracle.com/javase/8/docs/api/java/util/zip/ZipFile.html
                TestA[x] = new PasswordTesting(ZA);
            }
            for(int x = 0; x < NumberOfThreads; x++){ // for the second zip file
                TemporaryFileB[x] = (x + 1) + "-" + FilePathC;
                Files.copy(Path.of(FilePathB),Path.of(FilePathC +"/temps"));
                ZipFile ZB = new ZipFile(FilePathC + "/" + TemporaryFileB[x]);
                TestB[x] = new PasswordTesting(ZB);
            }

            long StartTime = System.currentTimeMillis();
            for(int x = 0; x < NumberOfThreads; x++){
                TestA[x].start();
                TestB[x].start();
            }
            for(int x = 0; x < NumberOfThreads; x++){
                TestA[x].join();
            }
            for(int x = 0; x < NumberOfThreads; x++){
                TextB[x].join();
            }

            long EndTime = System.currentTimeMillis();
            System.out.println((EndTime - StartTime) + "milliceconds to finish!!!");

            if(isPasswordFound()){
                System.out.println("The correct passwords is " + CorrectPassword);
            }
            else{
                System.out.println("Wrong password");
            }
        }catch (Exception e){
            System.out.println("ERROR!!");
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
        IsThePasswordFound = b;
    }

    static public boolean isPasswordFound(){
        return IsThePasswordFound.get();
    }

    static public void setPassword(String PW){
        CorrectPassword = PW;
    }*/
}
}