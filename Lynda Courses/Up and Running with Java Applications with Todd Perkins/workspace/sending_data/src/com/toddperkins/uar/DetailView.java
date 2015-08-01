package com.toddperkins.uar;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.*;

public class DetailView extends Activity {
	String url;
	
	@Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.detail);

        url = getIntent().getStringExtra(AppMain.LINK);
        url = url.replaceAll("\\s+", "");
        
        String title = getIntent().getStringExtra(AppMain.TITLE);
        TextView titleView = (TextView) findViewById(R.id.tTitle);
        titleView.setText(title);
        
        String description = getIntent().getStringExtra(AppMain.DESCRIPTION);
        TextView descriptionView = (TextView)findViewById(R.id.tDescription);
        descriptionView.setText(description);
        
        int price = getIntent().getIntExtra(AppMain.PRICE,0);
        TextView priceView = (TextView)findViewById(R.id.tPrice);
        priceView.setText("Price: $" + price);
        
        int length = getIntent().getIntExtra(AppMain.LENGTH,0);
        TextView lengthView = (TextView)findViewById(R.id.tLength);
        lengthView.setText(length + " miles");
        
        Button button = (Button) findViewById(R.id.button);
        button.setOnClickListener(new View.OnClickListener() {
			
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				Intent browserIntent = new Intent(Intent.ACTION_VIEW,Uri.parse(url));
				startActivity(browserIntent);
			}
		});
        
    }
}

