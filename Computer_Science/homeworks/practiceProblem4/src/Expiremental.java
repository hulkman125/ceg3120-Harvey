import static org.junit.Assert.assertEquals;
import java.beans.Transient;
import org.junit.Test;
/**
 * Program 
 * written by
 * Tyler
 * Raymond
 * Harvey
 */
public class Expiremental {
     /**
     * the return type 
     * of all these methods
     * are
     * @see void
     */

    @Test 
    /**
     * return type:
     * @see void
     */
    public void testingMeridian(){ 

        /**
         * testing if the 2 
         * clock objects are 
         * different in the meridian,
         * (Am or PM).
         */

        Clock timeAa = new Clock(5,2,"a.m.");
        Clock timeAb = new Clock(5,2,"p.m.");
        Clock resultA = Clock.getEarlier(timeAa, timeAb); // to determine which clock object is sooner
        assertEquals(timeAa, resultA); // from the first import statement

        Clock timeBa = new Clock(7,12,"p.m.");
        Clock timeBb = new Clock(7,12,"a.m.");
        Clock resultB = timeBa.getEarlier(timeBa, timeBb); // to determine which clock object is sooner
        assertEquals(timeBb, resultB); // from the first import statement
    }
        @Test
        /**
         * return type:
         * @see void
         */
        public void testingMinutes(){

        /**
         * testing if the 2 
         * clock objects are
         * different in 
         * minutes.
         */

        Clock timeCa = new Clock(5,31,"a.m.");
        Clock timeCb = new Clock(5,30,"a.m.");
        Clock resultC = timeCa.getEarlier(timeCa, timeCb); // to determine which clock object is sooner
        assertEquals(timeCb, resultC); // from the first import statement

        Clock timeDa = new Clock(5,30,"a.m.");
        Clock timeDb = new Clock(5,31,"a.m.");
        Clock resultD = timeDa.getEarlier(timeDa, timeDb); // to determine which clock object is sooner
        assertEquals(timeDa, resultD); // from the first import statement
    }

    @Test
        /**
         * return type:
         * @see void
         */
    public void testingHours(){
        /**
         * testing if the
         * 2 clock objects
         * different in 
         * in hours
         */
        Clock timeEa = new Clock(4, 40, "p.m.");
        Clock timeEb = new Clock(5, 40, "p.m.");
        Clock resultE = timeEa.getEarlier(timeEa,timeEb);
        assertEquals(timeEa, resultE);

        Clock timeFa = new Clock(5, 40, "p.m.");
        Clock timeFb = new Clock(4, 40, "p.m.");
        Clock resultF = timeFa.getEarlier(timeFa, timeFb);
        assertEquals(timeFb, resultF);
    }

    @Test
    /**
     * return type;
     * @see void
     */
    public void testingspecialCase(){
        /**
         * 12 is actually
         * sooner than any 
         * other time
         * on the clock.
         * This tests to 
         * see if that 
         * works.
         */
        Clock timeGa = new Clock(12, 40, "p.m.");
        Clock timeGb = new Clock(11, 40, "p.m.");
        Clock resultG = timeGa.getEarlier(timeGb,timeGa);
        assertEquals(timeGa, resultG);

    
        Clock timeHa = new Clock(11, 40, "p.m.");
        Clock timeHb = new Clock(12, 40, "p.m.");
        Clock resultH = timeGa.getEarlier(timeHa,timeHb);
        assertEquals(timeHb, resultH);
    }

    @Test
    /**
     * return type:
     * @see void
     */
    public void testingSameTime(){
        /**
         * testing to
         * seeif 
         * the clock 
         * objects are
         * exactly the 
         * same
         */
        Clock timeIa = new Clock(12, 40, "p.m.");
        Clock timeIb = new Clock(12, 40, "p.m.");
        Clock resultI = timeIa.getEarlier(timeIa, timeIb);
        assertEquals(timeIa, resultI);
        
    }
}