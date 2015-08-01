public class NameTest
{
	public static void main(String[] args)
	{
		// instantiation
		Name myName = new Name("Eude", "Kinsley", "Lesperance");
		Name yourName = new Name("Raymond", "Williams");
		/*Name aName = new Name ("Durr");
		Name someName;
		System.out.println("myName: " + myName.toString());
		System.out.println("yourName: " + yourName.toString());*/
		Name someName = new Name();
		System.out.println("myName first name: " + myName.getFirst());
		yourName.setLast("Brown");
		System.out.println("yourName: " + yourName.toString());
		someName.setName("John", "Quincy", "Adams");
		System.out.println("someName: " + someName.toString());
	}
}
