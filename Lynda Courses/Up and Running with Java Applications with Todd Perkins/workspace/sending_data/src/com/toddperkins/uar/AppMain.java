package com.toddperkins.uar;

import java.util.ArrayList;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

import android.app.*;
import android.content.Intent;
import android.os.*;
import android.util.Log;
import android.view.View;
import android.widget.*;

public class AppMain extends ListActivity {
	public ArrayList<String> titles = new ArrayList<String>();
	public ArrayList<String> descriptions = new ArrayList<String>();
	public ArrayList<String> links = new ArrayList<String>();
	public ArrayList<Integer> prices = new ArrayList<Integer>();
	public ArrayList<Number> lengths = new ArrayList<Number>();
	
	public static String TITLE = "tourTitle";
	public static String DESCRIPTION = "description";
	public static String LENGTH = "length";
	public static String PRICE = "price";
	public static String LINK = "link";
	
	/** Called when the activity is first created. */
    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.main);
        this.loadData();
        
        String []titles_str = titles.toArray(new String[titles.toArray().length]);
        this.setListAdapter(new ArrayAdapter<String>(this,android.R.layout.simple_list_item_1, titles_str));
        
    }
    
    @Override
    protected void onListItemClick(ListView l, View v, int position, long id) {
        super.onListItemClick(l, v, position, id);
        // Get the item that was clicked
        Intent intent = new Intent(v.getContext(), DetailView.class);
        intent.putExtra(TITLE, 	titles.get(position));
        intent.putExtra(DESCRIPTION, descriptions.get(position));
        intent.putExtra(PRICE, prices.get(position));
        intent.putExtra(LENGTH, lengths.get(position));
        intent.putExtra(LINK, links.get(position));
        startActivity(intent);
    }
    
    private void loadData()
    {
    	
    	try {
    			DocumentBuilderFactory dbFactory = DocumentBuilderFactory.newInstance();
    			
    			DocumentBuilder dBuilder = dbFactory.newDocumentBuilder();
    			
    			Document doc = dBuilder.parse(getAssets().open("data.xml"));
    			
    			doc.getDocumentElement().normalize();
    	 
    			NodeList nList = doc.getElementsByTagName("tour");
    			
    			for (int temp = 0; temp < nList.getLength(); temp++) {
    				
    			   Node nNode = nList.item(temp);
    			   if (nNode.getNodeType() == Node.ELEMENT_NODE) {
    	 
    			      Element eElement = (Element) nNode;

    			      titles.add(getTagValue(TITLE, eElement));
    			      descriptions.add(getTagValue(DESCRIPTION, eElement));
    			      links.add(getTagValue(LINK, eElement));
    			      prices.add(Integer.parseInt(getTagValue(PRICE, eElement)));
    			      lengths.add(Integer.parseInt(getTagValue(LENGTH, eElement)));

    			   }
    			}
    			
    			
    		  } catch (Exception e) {
    			e.printStackTrace();
    		  }
    }
    
    private String getTagValue(String sTag, Element eElement) {
		NodeList nlList = eElement.getElementsByTagName(sTag).item(0).getChildNodes();
	 
	        Node nValue = (Node) nlList.item(0);
	 
		return nValue.getNodeValue();
	 }
}