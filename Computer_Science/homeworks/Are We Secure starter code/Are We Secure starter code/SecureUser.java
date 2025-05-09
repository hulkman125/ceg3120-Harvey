public class SecureUser extends User
{
    public static int failedAttempts = 0; /* to declare the number of failed attempts*/

    /**
     * must create a default constructor to 
     * make an object that will
     * inheriet from the User 
     * constructor and use that 
     * data to ackoledge whether the SecureDate 
     * Object will become True
     * or False
     */

    /** default constructor
     * @param USNM is the username for the user 
     * @param Pass is the password for the user
     */
    public SecureUser(String USNM, String Pass) 
    {
        /** make an object from 
         *  the User constructor 
         */
        super(USNM, Pass); 
       
    }

    @Override 
    /** override the authenticate 
     * @param inputPassword input password to be authenticated
     * @return a boolean value to see if the password is True of False
     */
    public boolean authenticate(String inputPassword) {

       if(super.authenticate(inputPassword)) /*using the authenticate method in the user class to see if my password is true*/
       {
            
            if (failedAttempts <= 2) /* if the number of failed attempts has not yet reached the limit*/
            {
                
                failedAttempts = 0; /*reset the number of failed attempts*/
                return true;
            }
            else{
                ++failedAttempts; /*if the password is invalid increase the number of failed attempts*/
                return false;
            }
       }
       else
       {    /**
             * if my password 
             * is invalid
             */
            ++failedAttempts; /*increase the number of failed attempts*/            
            return false;
       } 
    }
    /**
     * SecureUser class 
     * written by
     * Tyler
     * Raymond
     * Harvey
     */
}