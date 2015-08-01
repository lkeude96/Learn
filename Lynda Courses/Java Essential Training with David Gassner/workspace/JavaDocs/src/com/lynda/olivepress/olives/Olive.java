package com.lynda.olivepress.olives;

/**
 * This is the superclass for all olives
 *
 */
public abstract class Olive {
	
	/**
	 * This is for black olives
	 */
	public static final long BLACK = 0x000000;
	/**
	 * This is for green olives
	 */
	public static final long GREEN = 0x00FF00;
	
	public String name = "Kalamata";
	public String flavor = "Grassy";
	public long color = Olive.BLACK;
	private int oil = 3;
	
	public int getOil() {
		return oil;
	}

	public void setOil(int oil) {
		this.oil = oil;
	}

	public Olive() {
		System.out.println("Constructor of " + this.name);
	}
	
	public Olive(int oil) {
		setOil(oil);
	}



	/**
	 * call this to crush a single olive!
	 */
	public int crush() {
		System.out.println("crush from superclass");
		return oil;
	}
	
	public abstract String getOrigin();
	
}
