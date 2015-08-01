package com.qlovur.sqlitesample;

import android.support.v7.app.ActionBarActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;


public class MainActivity extends ActionBarActivity {

    EditText buckysInput;
    TextView buckysText;
    MyDBHandler dbHandler;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        buckysInput = (EditText) findViewById(R.id.buckysInput);
        buckysText = (TextView) findViewById(R.id.buckysText);
        dbHandler = new MyDBHandler(this, null, null, 1);

        printDatabase();
    }


    public void addButtonClicked(View view) {
        Products product = new Products(buckysInput.getText().toString());
        dbHandler.addProduct(product);
        printDatabase();
    }

    public void deleteButtonClicked(View view) {
        String inputText = buckysInput.getText().toString();
        dbHandler.deleteProduct(inputText);
        printDatabase();

    }
    public void printDatabase() {
        String dbString = dbHandler.databaseToString();
        buckysText.setText(dbString);
        buckysInput.setText("");
    }


}
