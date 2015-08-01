public class DateTest
{
	public static void main(String[] args)
	{
		Date today = new Date(5, 4, 2011);
		Date tomorrow = new Date(5, 2011);
		System.out.println("today is " + today.toString());
		System.out.println("tomorrow is " + tomorrow.toString());
		tomorrow.setDay(5);
		System.out.println("tomorrow is " + tomorrow.toString());
		System.out.println("today is again " + today.getMonth() + "/" + 
					today.getDay() + "/" + today.getYear());
	}
}
