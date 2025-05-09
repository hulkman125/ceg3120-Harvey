public class TRAIN_LEAVES extends TrainEvent {

    /**
     * 
     * @param time
     */
    public TRAIN_LEAVES(int time){
        super(time); // calling the super constructor
    }

    public int getTime(){
        return super.getTime(); // returning the time
    }
}