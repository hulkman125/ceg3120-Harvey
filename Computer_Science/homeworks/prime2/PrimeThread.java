public class PrimeThread extends Thread{

    private int start;
    private int end;
    private int primes;
    /**
     * parameters of
     * constructor include
     * @param start of each thread
     * @param end of each thread
     */
    public PrimeThread(int start, int end){ 
        this.start = start;
        this.end = end;
        primes = 0;
    }
    /**
     * parameters of 
     * method include
     * the number to check 
     * if it is prime
     * or not:
     * @param n
     * with a return 
     * type of:
     * @return boolean
     */
    public static boolean isPrime(int n){
        if(n < 1){
            return false;
        }
        if(n <= 3){
            return true;
        }
        if(n % 2 == 0 || n % 3 == 0){
            return false;
        }
        for(int i = 5; i * i <= n; i += 6){
            if(n % i == 0 || n % (i + 2) == 0){
                return false;
            }
        }
        return true;
    }
    /**
     * parameters include:
     * @param start of type int
     * @param end of type int
     * with a return
     * type of type:
     * @return void
     */
    public void numberOfPrimes(int start, int end){
        for(int i = start; i < end; i++){
            if(isPrime(i)){
                primes++; //increase the number of prime numbers of each object
            }
        }
    }

    /**
     * no parameters
     * with a return type of:
     * @return int
     * to return the number 
     * of prime numbers 
     * inside this thread
     */
    public int getPrimes() {
        return primes;
    }
    /**
     * no parameters 
     * with a return 
     * type of:
     * @return void
     * to call the numberOfPrimes method
     * above.
     * And is a method of the extended class
     * of thread. 
     */
    public void run() {
        numberOfPrimes(start, end);
    }

}