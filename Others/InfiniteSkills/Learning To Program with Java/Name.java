public class Name
{
	private String first;
	private String middle;
	private String last;

	// constructor methods
	public Name(String f, String m, String l)
	{
		first = f;
		middle = m;
		last = l;
	}

	public Name(String f, String l)
	{
		first = f;
		middle = "";
		last = l;
	}

	public Name(String l)
	{
		first = "";
		middle = "";
		last = l;
	}

	public Name()
	{
		first = "";
		middle = "";
		last = "";
	}

	public String toString()
	{
		return first + " " + middle + " " + last;
	}

	public String getFirst() 
	{
		return first;
	}
	
	public String getMiddle()
	{
		return middle;
	}

	public String getLast()
	{
		return last;
	}

	public void setFirst(String fname)
	{
		first = fname;	
	}

	public void setMiddle(String mname)
	{
		middle = mname;
	}

	public void setLast(String lname)
	{
		last = lname;
	}
	
	public void setName(String f, String m, String l)
	{
		first = f;
		middle = m;
		last = l; 
	}
}
