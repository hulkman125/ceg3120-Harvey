

    /** Program method
	 * written by
	 * @author:
	 * Tyler
	 * Raymond
	 * Harvey
	 */

public class LinkedList {

	/**the head points to 
	 * the first element of
	 * list while the tail
	 * points to the last 
	 * element of the list
	 */
	private Node head; 
	private Node tail;
	
	/** adding each 
	 * element to
	 * the list
	 * @return void
	 */
	public void add(String item) {
		
		Node newItem = new Node(item);
		
		// handles the case where the new item 
		// is the only thing in the list
		if (head == null) {
			head = newItem;
			tail = newItem;
			return;
		}
		
		tail.next = newItem;
		tail = newItem;
	}
	
	/**
	 * the method to print
	 * out each element in 
	 * the list
	 * @return void
	 */
	public void print() {
		Node current = head;
		while (current != null) {
			System.out.println(current.item);
			current = current.next;
		}
	}
	
	

	 /**
	  * the method that returns
	  * the second last element
	  * in the list with a return
	  * type of...
	  * @return void
	  */
	public String getPenultimate() {
		// TODO your code here
		////////////////////////////////////////Inside the Method///////////////////////////////////////////////////////
		Node current = head;
		String txt; //The string of the text to return to
		if(head == null || head.next == null) // if there is 0 or 1 elements in the list...........
		{
			return null;  // ............returns and prints out null
		}
		txt = current.item; // if there is at lest 2 elements in the list the txt will change
		while(current != null){ // the iterator to check the items in each node
			if(current.next != null){ // if the current is not to its last
				txt = current.item; // make the string the item of the node
				current = current.next;
				if(current.next == null)// if the current has reach the second to last element.......
				{
					break; // .... the loop will break
				}
			}
		}
		return txt; // return the txt string
	}
	//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	/** the contructor for 
	 * each node
	 * with the fields 
	 * of next 
	 * and item
	 */
	class Node {
		String item;
		Node next;
		
		public Node(String item) {
			this.item = item;
			this.next = null;
		}
	}
}
