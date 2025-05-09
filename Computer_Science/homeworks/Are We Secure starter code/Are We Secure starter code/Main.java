public class Main {
    public static void main(String[] args) {

        // int fails = 0;
        

        // User user1 = new User("Michelle", "12345");
        // System.out.println("1. " + user1.isValidPassword()); // false -- less than 8 characters

        // User user2 = new User("Michelle", "12345Michelle");
        // System.out.println("2. " + user2.isValidPassword()); // false -- contains username

        // User user3 = new User("Michelle", "12345678");
        // System.out.println("3. " + user3.isValidPassword()); // true

        
        // System.out.println("4. " + user2.authenticate("ABCDE")); // false -- incorrect password
        
        // System.out.println("5. " + user2.authenticate("12345Michelle")); // true 

        // System.out.println("6. " + user3.authenticate("12345678")); // true
        



        ///////////// testing objects to see if they will work with SecureUser or not////////
        
        //SecureUser userA = new SecureUser("Michelle", "8fjk34111");
        //System.out.println(userA.authenticate("8fjk34112"));
        
        SecureUser userB = new SecureUser("Michelle", "kfks;2345");
        System.out.println(userB.authenticate("kfks;2349"));

        SecureUser userC = new SecureUser("Michelle", "apapap123");
        System.out.println(userC.authenticate("apapap1236")); 

        SecureUser userD = new SecureUser("Michelle", "apapap123");
        System.out.println(userC.authenticate("apapap1234")); 

        SecureUser userE = new SecureUser("Michelle", "qwertyuiop");
        System.out.println(userC.authenticate("qwertyuiop"));

        SecureUser userF = new SecureUser("Michelle", "apapap123");
        System.out.println(userC.authenticate("apapap123"));

        // SecureUser userG = new SecureUser("Michelle", "apapap123111111");
        // System.out.println(userC.authenticate("apapap1231111111111"));

        // SecureUser userH = new SecureUser("Michelle", "apapap123111111");
        // System.out.println(userH.authenticate("apapap1231111111111"));

        // SecureUser userI = new SecureUser("Michelle", "apapap123111111");
        // System.out.println(userI.authenticate("apapap1231111111111"));

        // SecureUser userJ = new SecureUser("Michelle", "apapap123");
        // System.out.println(userJ.authenticate("apapap123")); 

        // SecureUser userK = new SecureUser("Michelle", "qwertyuiop");
        // System.out.println(userK.authenticate("qwertyuiop")); 

        // SecureUser userL = new SecureUser("Michelle", "qwertyuiop");
        // System.out.println(userL.authenticate("qwertyuiop")); 


        //////////////////////////////////////////////////////////////////////////////////

    }

}
