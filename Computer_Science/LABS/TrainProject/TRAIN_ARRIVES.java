class TRAIN_ARRIVES extends TrainEvent {
    
    /**
     * 
     * @param time
     */
    public TRAIN_ARRIVES(int time){
        super(time); //calling the super constructor
    }

    public int getTime(){
        return super.getTime(); //returning the time of the train arriving
    }
    
}