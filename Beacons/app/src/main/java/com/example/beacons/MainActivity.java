package com.example.beacons;

import android.os.Bundle;
import android.support.wearable.activity.WearableActivity;

import com.estimote.indoorsdk.EstimoteCloudCredentials;
import com.estimote.indoorsdk.IndoorLocationManagerBuilder;
import com.estimote.indoorsdk_module.algorithm.OnPositionUpdateListener;
import com.estimote.indoorsdk_module.algorithm.ScanningIndoorLocationManager;
import com.estimote.indoorsdk_module.cloud.CloudCallback;
import com.estimote.indoorsdk_module.cloud.EstimoteCloudException;
import com.estimote.indoorsdk_module.cloud.IndoorCloudManager;
import com.estimote.indoorsdk_module.cloud.IndoorCloudManagerFactory;
import com.estimote.indoorsdk_module.cloud.Location;
import com.estimote.indoorsdk_module.cloud.LocationPosition;
import com.estimote.indoorsdk_module.view.IndoorLocationView;

import org.jetbrains.annotations.NotNull;

public class MainActivity extends WearableActivity {
    public ScanningIndoorLocationManager indoorLocationManager;
    IndoorLocationView indoorView;
    Location location = new Location();

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        IndoorCloudManager cloudManager = new IndoorCloudManagerFactory().create(
                getApplicationContext(),
                new EstimoteCloudCredentials("laboratorium-dibris-gmail--kfg", "90e1b9d8344624e9c2cd42b9f5fd6392"));
        cloudManager.getLocation("luogo", new CloudCallback<Location>() {
            @Override
            public void success(Location loc) {
                location = loc;
                indoorView = findViewById(R.id.indoor_view);
                indoorView.setLocation(loc);
                ScanningIndoorLocationManager indoorLocationManager =
                        new IndoorLocationManagerBuilder(getApplicationContext(), location,
                                new EstimoteCloudCredentials("laboratorium-dibris-gmail--kfg", "90e1b9d8344624e9c2cd42b9f5fd6392"))
                                .withDefaultScanner()
                                .build();

                indoorLocationManager.setOnPositionUpdateListener(new OnPositionUpdateListener() {
                    @Override
                    public void onPositionUpdate(LocationPosition position) {
                        // here, we update the IndoorLocationView with the current position,
                        // but you can use the position for anything you want
                        indoorView.updatePosition(position);
                    }

                    @Override
                    public void onPositionOutsideLocation() {
                        indoorView.hidePosition();
                    }
                });
                indoorLocationManager.startPositioning();
            }

            @Override
            public void failure(@NotNull EstimoteCloudException e) {

            }
        });



    }

    @Override
    protected void onStart() {
        super.onStart();
    }

    @Override
    protected void onStop() {
        super.onStop();
        if (indoorLocationManager != null)
            indoorLocationManager.stopPositioning();
    }

}