
public class SwitchWithStrings {

	public static void main(String[] args) {
		String value = "January";
		
		switch (value) {
		case "January":
			System.out.println("The value is 1");
			break;
		case "February":
			System.out.println("The value is 2");
			break;
		case "March":
			System.out.println("The value is 3");
			break;
		default:
			System.out.println("The value is something else");
			break;
		}
	}

}
