package com.qlovur.videoplayer;

import android.support.v7.app.ActionBarActivity;
import android.os.Bundle;
import android.widget.VideoView;
import android.widget.MediaController;


public class MainActivity extends ActionBarActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        final VideoView buckysVideoView = (VideoView) findViewById(R.id.buckysVideoView);
        buckysVideoView.setVideoPath("android.resource://com.qlovur.videoplayer/" + R.drawable.think);

        MediaController mediaController = new MediaController(this);
        mediaController.setAnchorView(buckysVideoView);
        buckysVideoView.setMediaController(mediaController);

        buckysVideoView.start();
    }

}
