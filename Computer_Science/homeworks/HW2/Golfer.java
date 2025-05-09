public class Golfer implements Comparable<Golfer> {

    /**
     * Program 
     * written by
     * Tyler
     * Raymond
     * Harvey
     */

    //fields that make up the Golfer Object
    private String firstName;
    private String lastName;
    private int score;
    private int thru;

    /**
     * must create my private fields to help
     * create each Golfer object
     * then order each of them by their score, hole number, 
     * last name , then by first name
     * 
     * @param LN
     * @param FN
     * @param S
     * @param T
     */

    // the constructor that declares what each field the golfer contains
    public Golfer(String LN, String FN, int S, int T)
    {
        firstName = FN;
        lastName = LN;
        score = S;
        thru = T;
    }

    // toString method that returns the string of the objet.
    @Override
    /** override toSrtring
     * @return and int value to 
     * help order the object by 
     * its elements
     */
    public String toString()
    {
        return lastName + ", " + firstName + ": " + score + " through " + thru;
    }

    

    public int compareTo(Golfer other)
    {
        /**
         * if this score is 
         * less then the others
         */
        if(this.score < other.score) 
        {
            return -1;
        }
        else if(this.score > other.score) // if this score is greater
        {
            return 1;
        }
        else
        {   
            /**
             * if the 2 scores 
             * are equal
             */
            if(this.thru > other.thru)
            {   
                /**
                 * if this hole number 
                 * is greater than other's
                 */
                return 1;
            }
            else if(this.thru < other.thru) // if this is less than others
            {
                return -1;
            }
            else
            {   
                /**
                 * If the last name is not alphebetically greater than the other's
                 */
                if((this.lastName.compareToIgnoreCase(other.lastName)) < 0)
                {
                    return -1;
                }
                else if((this.lastName.compareToIgnoreCase(other.lastName)) > 0) // if it is greater than other's
                {
                    return 1;
                }
                else
                {   
                    {
                        /**
                         * if first name is not 
                         * alphebetically greater 
                         * than the other's
                         * 
                         */
                        if((this.firstName.compareToIgnoreCase(other.firstName)) < 0)
                        {
                           return -1;
                        }
                        else if((this.firstName.compareToIgnoreCase(other.firstName)) > 0) // if first name is alphebetically greater than other's
                        {
                           return 1;
                        }
                        else
                        /**
                         * if everything is the 
                         * same then do nothing
                         */
                        { return 0; } 
                    }
                }
            }
        }
    }
}

