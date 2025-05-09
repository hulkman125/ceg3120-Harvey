import java.io.File;
import java.io.FileNotFoundException;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.PriorityQueue;
import java.util.Queue;
import java.util.Scanner;

/**
 * Program written
 * by
 * @author: 
 * Tyler
 * Raymond
 * Harvey
 */

class Simulation{
    // all the queues and arraylists we will be using to store events
    static PriorityQueue<Event> eventQueue = new PriorityQueue<Event>(); // the event queue with all our fancy events
    static ArrayList<Integer> trainStart = new ArrayList<>();  //arraylist for the trains starting
    static ArrayList<Integer> trainEnd = new ArrayList<>(); // arraylist for the trains ending
    static Queue<TruckEvent> waitingTrucks = new LinkedList<>(); // queue for the waiting trucks
    static ArrayList<TRUCK_END> endTrucks = new ArrayList<>(); // arraylist for the trucks ending.

    static File file = new File("train_schedule.txt"); // file with the train scedual we will be using

    /**
     * taking the  
     * method of 
     * the parameter of:
     * @param filename
     * to take the file of 
     * train sceduals to make
     * events of train_start
     * and train_events
     * @throws FileNotFoundException
     */
    public static void readData(File filename) throws FileNotFoundException
    {
        Scanner input = new Scanner(filename);
        while(input.hasNextLine()) // while the file still has text
        {
            String IT = input.nextLine();
            String[] scedual = IT.split(" "); //splitting the text into 2 strings and putting them into an array

            int sceduaStart = Integer.parseInt(scedual[0]); // the train starting
            int scedualDuration = Integer.parseInt(scedual[1]); // the train duration

            
            trainStart.add(sceduaStart); // adding a train starting 
            eventQueue.offer(new TRAIN_ARRIVES(sceduaStart)); // adding the train starting to event queue
            trainEnd.add(sceduaStart + scedualDuration); //adding a train ending
            eventQueue.offer(new TRAIN_LEAVES(sceduaStart + scedualDuration)); // adding a triain ending to event queue
            
        }
        input.close();
    }
    /**
     * the main method 
     * with arguments of:
     * @param args
     * @throws FileNotFoundException
     */

    public static void main(String[] args) throws FileNotFoundException {

        int totalPackages = 1500;
        double PERCENT_BY_DRONE = .25;
        int droneTripTime = 60; // total time for each drone to complete its travel
        int packagesPerTruck = 10; // number of packages for each truck
        int numberOfDrones = (int)(totalPackages * PERCENT_BY_DRONE); // total number of drones needed
        int numberOftrucksNeeded = (totalPackages - numberOfDrones) / packagesPerTruck; 
        
        if(((totalPackages - numberOfDrones) / packagesPerTruck) % 10 != 0){
            numberOftrucksNeeded++; // increase by one if the above formula is not divisable by 10
        }

        int totalDroneTime = 60 + (3 * ( numberOfDrones - 1)); // the total time it takes for all the drones to deliver
        
        

        /////reading the file and adding the time to eventQueue
        readData(file);
        
        for(int x = 0; x < numberOftrucksNeeded; x++){
            eventQueue.offer(new TRUCK_START(x, x * 15)); // adding a truck starting event to the eventqueue
        }

        // printing out the trucks, drones and the scedual
        System.out.println();
        System.out.println("With " + PERCENT_BY_DRONE+ "% drones and " + totalPackages + " packages,");
        System.out.println("There will be:");
        System.out.println("-" + numberOfDrones + " drones");
        System.out.println("-"+ numberOftrucksNeeded + "trucks");
        System.out.println("TRAIN SCEDUAL\n-----------");

        for(int x = 0; x < trainStart.size(); x++){
            System.out.println(trainStart.get(x) + "-" + trainEnd.get(x)); // printing out the scedual
        }System.out.println();

       boolean isTrain = false; // if there is no train 
       while(!eventQueue.isEmpty()){ // while there is nothing in the queue
        Event currentevent = eventQueue.poll(); // the event you are currently working on
        if(currentevent instanceof TRAIN_ARRIVES){ // if the event is a Train arriving
            isTrain = true; // there is a train
            System.out.println(currentevent.getTime() + ".0 TRAIN arrives at crossing");
        }
        else if(currentevent instanceof TRAIN_LEAVES){ // if the train is leaving
            isTrain = false; // turns the boolean to false
            TRUCK_AT_CROSSING e = (TRUCK_AT_CROSSING)waitingTrucks.poll(); // taking the event queue out
            eventQueue.offer(new TRUCK_CROSS(e.getID(), currentevent.getTime() + 1)); // adding a new event queue
            System.out.println(currentevent.getTime() + ".0 TRAIN leaves crossing");
        }
        else if(currentevent instanceof TRUCK_START){ // if the event is a truck starting
            TRUCK_START tr = (TRUCK_START)currentevent;
            int id = tr.getID(); // the ID of the truck
            int t = tr.getTime(); // the time of the truck
            System.out.println(t + ".0 TRUCK #" + id + " starts journey");
            eventQueue.offer(new TRUCK_AT_CROSSING(id, t + 100)); // adding a new event to the queue
            
        }
        else if(currentevent instanceof TRUCK_AT_CROSSING){ // if the event is a truck at crossing
            TRUCK_AT_CROSSING tr = (TRUCK_AT_CROSSING)currentevent;
            if(!(isTrain) && waitingTrucks.isEmpty()){ // is there is a train and the waiting trucks is empty
                
                int id = tr.getID(); //ID
                int t = tr.getTime(); //Time
                eventQueue.offer(new TRUCK_CROSS(id, t)); // adding a new event
            }
            else {
                int id = tr.getID(); //truck ID
                int t = tr.getTime(); // truck time
                System.out.println(t + ".0 TRUCK #" + id + " waits at crossing");
                waitingTrucks.offer(tr); // adding a new train to the waiting trucka

            }
        }
        else if(currentevent instanceof TRUCK_CROSS){ // if the event is a truck crossing
            
            TRUCK_CROSS tr = (TRUCK_CROSS)currentevent;
            int id = tr.getID(); // the truck's ID
            int t = tr.getTime(); // the truck's time
            System.out.println(t + ".0 TRUCK #" + id + " crosses crossing");
            eventQueue.offer(new TRUCK_END(id, t + 900)); // adding a newevent with 900 more minutes extra
            if(!waitingTrucks.isEmpty()){ // if the waiting trucks is not empty
            TRUCK_AT_CROSSING e = (TRUCK_AT_CROSSING)waitingTrucks.poll();
            eventQueue.offer(new TRUCK_CROSS(e.getID(), tr.getTime() + 1)); // adding a new event with the same time but 1 minutes extra

            }
        }
        else if(currentevent instanceof TRUCK_END){ // if event is truck ending
            TRUCK_END tr = (TRUCK_END)currentevent;
            endTrucks.add(tr); //adding the event to endTruck
            int id = tr.getID(); // ID
            int t = tr.getTime(); // time
            System.out.println(t + ".0 TRUCK #" + id + " finishes journey");
        }
       }

       //determining and outputing the stats of you trucks and drones
       double averageTime = 0;
       System.out.println();
       System.out.println("STATS\n-----");
       for(int x = 0; x < endTrucks.size(); x++){
        int q = x * 15;
        System.out.println("TRUCK# " + x + " Total trip time: " + (endTrucks.get(x).getTime() - q) + ".0 minutes" );
        averageTime += ((endTrucks.get(x).getTime()) - q );
       }

       averageTime = averageTime / numberOftrucksNeeded; // determining the average time

       System.out.println("\nTRUCK AVG TRIP TIME:" + averageTime + " minutes");
       System.out.println("TRUCK TOTAL TIME: " + endTrucks.get(numberOftrucksNeeded - 1).getTime() + ".0 minutes\n");

       System.out.println("DRONE TRIP TIME: " + droneTripTime + ".0");
       System.out.println("DRONE TOTAL TIME: " + totalDroneTime + ".0\n");

       System.out.println("TOTAL TIME: " + endTrucks.get(endTrucks.size() - 1).getTime() + ".0 minutes");
       System.out.println("BUILD SUCCESSFUL(total time:0 seconds)\n");

        ////////////////////////////////////////////////////////

        
        


    }
}