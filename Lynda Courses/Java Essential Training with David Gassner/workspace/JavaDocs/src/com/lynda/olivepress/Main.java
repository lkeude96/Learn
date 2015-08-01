package com.lynda.olivepress;

import java.util.ArrayList;

import com.lynda.olivepress.olives.Kalamata;
import com.lynda.olivepress.olives.Ligurian;
import com.lynda.olivepress.olives.Olive;
import com.lynda.olivepress.press.OlivePress;

/**
 * This is the main class for my app
 * @author Kinsley
 * @version 1.0
 */
public class Main {

	public static void main(String[] args) {
		
		ArrayList<Olive> olives = new ArrayList<Olive>();
		
		Olive olive;
		
		olive = new Kalamata();
		System.out.println(olive.name);
		olives.add(olive);
		
		olive = new Ligurian();
		System.out.println(olive.name);
		olives.add(olive);
		
		olive = new Kalamata();
		System.out.println(olive.name);
		olives.add(olive);
		
		OlivePress press = new OlivePress();
		press.getOil(olives);
		
		System.out.println("You got " + press.getTotalOil() + " units of oil");
		
		press.getOil(olives);
		
		System.out.println("You got " + press.getTotalOil() + " units of oil");
		
		Olive olive1 = olives.get(0);
		System.out.println("Olive 1 is from " + olive1.getOrigin());

		Olive olive2 = olives.get(1);
		System.out.println("Olive 2 is from " + olive2.getOrigin());
		
//		Olive olive2 = new Olive() {
//			
//			@Override
//			public String getOrigin() {
//				// TODO Auto-generated method stub
//				return null;
//			}
//		};
	}

}
