import java.util.Comparator;

public class Athlete<E extends Comparable<E>> implements Comparable<Athlete<E>>{

    // compaere by sport then by rank

    public String Name = "";
    public String Sport = "";
    public E rank;

    /**
     * created a constructor
     * with the elements
     * of an Athlete
     * @param Name
     * @param Sport
     * @param rank
     */
    public Athlete(String Name, String Sport, E rank){
        this.Name = Name;
        this.Sport = Sport;
        this.rank = rank;
    }
    @Override
    public int compareTo(Athlete<E> other){
        //comparing athletes by sport
        if(this.Sport.compareToIgnoreCase(other.Sport) > 0){
            return -1;
        }
        else if(this.Sport.compareToIgnoreCase(other.Sport) < 0){
            return 1;
        }
        else{
            //comparing athletes by rank
            if(this.rank.compareTo(other.rank) > 0){
                return -1;
            }
            else if(this.rank.compareTo(other.rank) < 0) {
                return 1;
            }

            else {return 0;} // if the athletes have the same sport and rank
        }
    }
    /**
     * the method to 
     * rint out the 
     * sorted athletes
     */
    @Override
    public String toString(){
        return Name + "(" + Sport + " - " + rank + ")";
    }
}