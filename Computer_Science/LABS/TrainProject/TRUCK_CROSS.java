class TRUCK_CROSS extends TruckEvent {

    private int time;
    
    /**
     * 
     * @param truckID
     * @param time
     */
    public TRUCK_CROSS(int truckID, int time){
        super(truckID, time); // calling the super constructor
        this.time = time;
    }

    public int getTime(){ // returning the trcks time
        return time;
    }
}