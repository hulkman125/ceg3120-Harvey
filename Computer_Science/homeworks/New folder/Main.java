import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;

public class Main {

    /**
     * Program 
     * written by
     * @author:
     * Tyler
     * Raymond
     * Harvey
     */

    public static void main(String[] args){
        // making athletes of name, sport and rank
        Athlete athleteA = new Athlete("John Doe", "baseball", 3);
        Athlete athleteB = new Athlete("Sam Johnson", "football", 2);
        Athlete athleteC = new Athlete("Kevin Smith", "baseball", 1);
        Athlete athleteD = new Athlete("Sally Johnson", "Swimming", 3);
        Athlete athleteE = new Athlete("James Smith", "Swimming", 4);
        Athlete athleteF = new Athlete("Megan Kelly", "Swimming", 1);
        
        // putting those athletes in an arraylist
        ArrayList<Athlete> listOfAthletesA = new ArrayList<Athlete>();
        listOfAthletesA.add(athleteA);
        listOfAthletesA.add(athleteB);
        listOfAthletesA.add(athleteC);
        listOfAthletesA.add(athleteD);
        listOfAthletesA.add(athleteE);
        listOfAthletesA.add(athleteF);


        //the Athletes before any sorting//////////////////////////////////////////////////////
        for(int x = 0; x < listOfAthletesA.size(); x++){
            System.out.println(listOfAthletesA.get(x).toString()); // prints out objects before sorting
        }System.out.println();
        /////////////////////////////////////////////////////////////////////////////////////////


        //the athletes after being sorted by sport and name//////////////////////////////
        Collections.sort(listOfAthletesA, new CompareToClass());
        for(int x = 0; x < listOfAthletesA.size(); x ++)
        {
            System.out.println(listOfAthletesA.get(x).toString()); //print out the objects after the sorting
        }System.out.println();
        //////////////////////////////////////////////////////////////////////////////////


        //the athletes after being sorted by sport and rank/////////////////////////////////
        Collections.sort(listOfAthletesA);
        for(int x = 0; x < listOfAthletesA.size(); x ++){
            System.out.println(listOfAthletesA.get(x).toString()); //print out the objects after sorting
        }
        ////////////////////////////////////////////////////////////////////////////////////
    }
}