package org.ros.android.android_wear_pub

import android.content.Intent
import android.os.Bundle
import android.support.wearable.activity.WearableActivity
import com.estimote.proximity_sdk.api.TriggerBroadcastReceiver.Companion.createIntent

class MainActivity: WearableActivity() {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        val intent = Intent(this@MainActivity,Proximity::class.java);
        startActivity(intent);
    }
}