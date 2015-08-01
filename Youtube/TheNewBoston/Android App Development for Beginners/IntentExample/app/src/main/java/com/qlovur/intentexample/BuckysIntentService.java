package com.qlovur.intentexample;

import android.app.IntentService;
import android.content.Intent;
import android.util.Log;

public class BuckysIntentService extends IntentService {

    private static final String TAG = "com.qlovur.intentexample";

    public BuckysIntentService() {
        super("BuckysIntentService");
    }

    @Override
    protected void onHandleIntent(Intent intent) {
        Log.i(TAG,"The service has now started");
    }
}
