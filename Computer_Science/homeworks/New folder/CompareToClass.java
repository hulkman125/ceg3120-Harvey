import java.util.Comparator;

public class CompareToClass implements Comparator<Athlete> {
    
 // compare to by sport then name

    /**
     * the method to compare 2 
     * athletes
     * 
     * @param thisGuy
     * @param other
     */
    public int compare(Athlete thisGuy, Athlete other){
        // compareing athletes by sport
        if(thisGuy.Sport.compareToIgnoreCase(other.Sport) < 0){
            return -1;
        }
        else if(thisGuy.Sport.compareToIgnoreCase(other.Sport) > 0){
            return 1;
        }
        else{
            // comparing the athletes by name
            if(thisGuy.Name.compareToIgnoreCase(other.Name) < 0){
                return -1;
            }

            else if(thisGuy.Name.compareToIgnoreCase(other.Name) > 0){
                return 1;
            }

            else{return 0;} // if sport and name are the name
        }
    }
}