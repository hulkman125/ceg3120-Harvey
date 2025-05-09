class TruckEvent extends Event implements Comparable<Event> {

    private int truckID;
    /**
     * 
     * @param truckID
     * @param time
     */
    public TruckEvent(int truckID, int time){
        super(time); //calling the super constructor
        this.truckID = truckID;
    }

    public int getID(){ // getting the truck's ID
        return truckID;
    }

    public int getTime(){ // getting the truck's time
        return super.getTime();
    }

    public int compareTo(Event other){
        if(this.getTime() > other.getTime()){
            return 1;
        }
        else if(this.getTime() < other.getTime()){
            return -1;
        }
        else {return 0;}

    }
}