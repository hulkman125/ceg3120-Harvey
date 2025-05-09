
class Event implements Comparable<Event> { // the most super class with a comparable class to implements

    private int time = 0;
    
    public Event(int time){
        this.time = time;  
    }

    public int getTime(){
        return time; // returning the time
    }

    /**
     * @param other the other event 
     */
    public int compareTo(Event other){ // comparing the time
        if(this.time < other.time){
            return -1;
        }
        else if(this.time > other.time) {
            return 1;
        }
        else {return 0;}
    };
}