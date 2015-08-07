package com.example.android.weather;

import android.support.v7.app.ActionBarActivity;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;


public class MainActivity extends ActionBarActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        createWeatherMessage(77, "San Francisco");
    }

    /**
     * Create new message that specifies the city name and temperature.
     *
     * @param temperature of a city
     * @param cityName is the name of the city
     */
    private String createWeatherMessage(int temperature, String cityName) {
        return "Welcome to " + cityName + " where the temperature is " + temperature +"°F";
    }
}
