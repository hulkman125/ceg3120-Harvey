class TrainEvent extends Event { // this class gets inherited by 2 subclasses and is inherited by the event class

    /**
     * 
     * @param time
     */
    public TrainEvent(int time){
        super(time); //calling the super constructor
    }
}