package com.toddperkins.uar;
import java.awt.*;
import java.awt.event.*;
import javax.swing.*;
import javax.xml.parsers.*;
import org.w3c.dom.*;
import java.net.*;
import java.util.ArrayList;

public class View extends JFrame implements ActionListener {
	
	private static final long serialVersionUID = 12345L;
	public ArrayList<String> titles = new ArrayList<String>();
	public ArrayList<String> descriptions = new ArrayList<String>();
	public ArrayList<String> links = new ArrayList<String>();
	public ArrayList<String> prices = new ArrayList<String>();
	public ArrayList<String> lengths = new ArrayList<String>();
	public JList list;
	public JComboBox combo;
	public JTextArea textArea = new JTextArea();
	public JLabel priceLabel = new JLabel();
	public JLabel lengthLabel = new JLabel();
	public JScrollPane textScroller;
	public View() {
		super("Backpack CA");
		setLayout(new FlowLayout());
		loadData("http://localhost:8080/jsp_final/data.jsp");
		JPanel panel = new JPanel();
		panel.setLayout(new BoxLayout(panel, BoxLayout.PAGE_AXIS));
		add(panel);
		JPanel labelPanel = new JPanel();
		labelPanel.setLayout(new BoxLayout(labelPanel, BoxLayout.LINE_AXIS));
		labelPanel.add(priceLabel);
		labelPanel.add(Box.createRigidArea(new Dimension(15, 0)));
		labelPanel.add(lengthLabel);
		labelPanel.add(Box.createRigidArea(new Dimension(15, 0)));
		priceLabel.setText("Price: $0");
		lengthLabel.setText("Length: 5 miles");
		combo = new JComboBox(titles.toArray());
		combo.addActionListener(this);
		panel.add(combo);
		panel.add(Box.createRigidArea(new Dimension(0, 15)));
		textScroller = new JScrollPane(textArea, ScrollPaneConstants.VERTICAL_SCROLLBAR_AS_NEEDED, ScrollPaneConstants.HORIZONTAL_SCROLLBAR_NEVER);
		textArea.setLineWrap(true);
		textArea.setRows(10);
		textArea.setWrapStyleWord(true);
		panel.add(textScroller);
		panel.add(Box.createRigidArea(new Dimension(0, 15)));
		panel.add(labelPanel);
		JButton btn = new JButton("Book Now!");
		btn.addActionListener(this);
		btn.setActionCommand("click");
		labelPanel.add(btn);
		combo.setSelectedIndex(0);
	}

	@Override
	public void actionPerformed(ActionEvent e) {
		int i = combo.getSelectedIndex();
		
		if(e.getActionCommand().equals("click")) {
			try {
				java.awt.Desktop.getDesktop().browse(new URI(links.get(i)));
			} catch(Exception ex) {
				System.out.println("error loading url");
			}
		}
		
		textArea.setText(descriptions.get(i));
		priceLabel.setText("Price: $" + prices.get(i));
		lengthLabel.setText("Length: " + lengths.get(i) + " miles");
		
		javax.swing.SwingUtilities.invokeLater(new Runnable() {
			public void run() {
				textScroller.getVerticalScrollBar().setValue(0);
			}
		});
	}
	
	public void loadData(String xmlURL) {
		try {
			DocumentBuilderFactory dbFactory = DocumentBuilderFactory.newInstance();
			
			DocumentBuilder dBuilder = dbFactory.newDocumentBuilder();
			Document doc = dBuilder.parse(new URL(xmlURL).openStream());
			doc.getDocumentElement().normalize();
			
			NodeList nodes = doc.getElementsByTagName("tour");
			
			for(int i = 0; i < nodes.getLength(); i++) {
				
				Node n = nodes.item(i);
				if (n.getNodeType() == Node.ELEMENT_NODE) {
					
					Element e = (Element) n;
					
					titles.add(getTagValue("tourTitle", e));
					descriptions.add(getTagValue("description", e));
					links.add(getTagValue("link", e).replaceAll("\\s+", ""));
					prices.add(getTagValue("price", e));
					lengths.add(getTagValue("length", e));
				}
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	private static String getTagValue(String sTag, Element eElement) {
		NodeList nlList = eElement.getElementsByTagName(sTag).item(0).getChildNodes();
		
		Node nValue = (Node) nlList.item(0);
		
		return nValue.getNodeValue();
	}
	
	

}
