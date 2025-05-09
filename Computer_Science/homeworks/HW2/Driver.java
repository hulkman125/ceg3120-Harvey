import java.util.*;

public class Driver {
    public static void main(String[] args) {

        // 3 objects with each their own field.
        Golfer golferA = new Golfer("Duncan", "Kayla", 6, 10);
        Golfer golferB = new Golfer("Middleton", "Cody",8, 7);
        Golfer golferC = new Golfer("Harvey", "Tyler", 5,9);

        ArrayList<Golfer> listOfPlayers = new ArrayList<Golfer>(); // arraylist of Golfer objects

        // adding each Golfer object into the arraylist
        listOfPlayers.add(golferA);
        listOfPlayers.add(golferB);
        listOfPlayers.add(golferC);

        for(int x = 0; x < listOfPlayers.size(); x ++)
        {
            System.out.println(listOfPlayers.get(x).toString()); // print out the objects before sorting
        }

        Collections.sort(listOfPlayers); //sort the objects in a certain order
        System.out.println();//print a new line to separate the other 2 println's

        for(int x = 0; x < listOfPlayers.size(); x ++)
        {
            System.out.println(listOfPlayers.get(x).toString()); //print out the objects after the sorting
        }
    }
}