import java.util.Scanner;
import java.util.ArrayList;
/**
 * Programed by
 * @author: 
 * Tyler
 * Raymond
 * Harvey
 */
public class Driver extends Thread{

/**
 * Parameters of
 * the main
 * method include:
 * @param args
 * with a 
 * return type
 * of:
 * @return void
 */
    public static void main(String[] args){
        Scanner input = new Scanner(System.in);

        System.out.println("Enter the number of threads you will use");// the number of threads you will use
        int numOfThreads = input.nextInt();

        System.out.println("Enter the number to check for primes"); // the number to check primes with
        int PrimeCheck = input.nextInt();

        System.out.println("The number of primes inside is  " + countPrimes(numOfThreads, PrimeCheck));// output the number of primes
    }
    /**
     * parameters of
     * countPrimes include
     * @param numberOfThreads of type int
     * @param PrimeCheck also of type int
     * with a return 
     * type of:
     * @return int
     */
    public static int countPrimes(int numberOfThreads, int PrimeCheck){
        long startTime = System.currentTimeMillis(); // determining the start time of the currentTime
        PrimeThread thread = new PrimeThread(1, PrimeCheck); //declaring a thread of the PrimeThread object
        thread.numberOfPrimes(1, PrimeCheck); //calling the numberOfPrimes method of PrimeThread object

        int start = 1;
        int end = PrimeCheck / numberOfThreads;

        long[] startThread = new long[numberOfThreads]; // an array of start time for each thread you make.
        long[] endThread = new long[numberOfThreads]; // an array of end time for each thread you make.

        ArrayList<PrimeThread> threadList = new ArrayList<>(); // an arrayList of PrimeThreads
        for(int x = 0; x < numberOfThreads; x++){
            threadList.add(new PrimeThread(start, end)); // adding a new Primethread object to threadList
            start += (PrimeCheck / numberOfThreads); //increasing start
            end += (PrimeCheck / numberOfThreads); //increasing end
        }
        int beginInt = 0;
        for(PrimeThread t : threadList){
            t.start(); //starting each thread
            startThread[beginInt] = System.currentTimeMillis(); //adding a SystemStart to startThread
            beginInt++;
        }
        int endInt = 0;
        for(PrimeThread t : threadList){
            try{
                t.join(); // joining each method
                endThread[endInt] = System.currentTimeMillis(); //adding a SystemStart to endTime
                endInt++;
            }catch( InterruptedException e){
                System.err.println(e);
            }
        }
        
        long endTime = System.currentTimeMillis(); // creating a new SystemTime for an endTime
        for(int x = 0; x < numberOfThreads; x++){
            /**
             * outputing the
             * time it took
             * for each thread
             * to complete
             */
            System.out.println("Thread #" + (x + 1) + " took " + (endThread[x] - startThread[x]) + " milliseconds to complete.");
        }
        System.out.println("Main took " + (endTime - startTime) + " milliseconds to finish"); // outputing how long it took for the main thread to complete

        return thread.getPrimes(); //return the number of primes
    }
}