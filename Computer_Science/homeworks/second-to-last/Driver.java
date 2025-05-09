
public class Driver {

	public static void main(String[] args) {
		LinkedList list = new LinkedList(); 
		/**
		 * a list 
		 * of football
		 * teams in 
		 * the country
		 */
		list.add("Falcons");
		list.add("Bears");
		list.add("Titans");
		list.add("Eagles");
		list.add("Panthers");
		list.add("Cowboys");
		list.add("Steelers");
		list.add("49ers");
		list.add("Vikings");
		list.add("Saints");
		list.add("Seahawks");
		
		list.print();
		System.out.println("\n");
		System.out.println(list.getPenultimate()); // getting the second-to-last element in the linkedlist
	}
}
