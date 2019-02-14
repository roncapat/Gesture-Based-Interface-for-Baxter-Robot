package org.ros.android.android_wear_pub;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.support.wearable.activity.WearableActivity;
;
import org.ros.android.MessageCallable;
import org.ros.android.RosActivity;
import org.ros.android.view.RosTextView;
import org.ros.node.NodeConfiguration;
import org.ros.node.NodeMainExecutor;

import java.net.URI;


public class MainActivity extends WearableActivity
{
    /*private Speaker talker;
    private RosTextView<std_msgs.String> rosTextView;

    public MainActivity() {
        super("Pubsub Tutorial", "Pubsub Tutorial", URI.create("http://192.168.43.233:11311"));
    }*/

    @SuppressWarnings("unchecked")
    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        /*rosTextView = (RosTextView<std_msgs.String>) findViewById(R.id.text);
        rosTextView.setTopicName("chatter");
        rosTextView.setMessageType(std_msgs.String._TYPE);
        rosTextView.setMessageToStringCallable(new MessageCallable<String, std_msgs.String>() {
            @Override
            public String call(std_msgs.String message) {
                return message.getData();
            }
        });*/

        Intent intent = new Intent(this, Proximity.class);
        finish();
        startActivity(intent);
    }

    /*@Override
    protected void init(NodeMainExecutor nodeMainExecutor) {
        talker = new Speaker();

        NodeConfiguration nodeConfiguration = NodeConfiguration.newPublic(getRosHostname());
        nodeConfiguration.setMasterUri(getMasterUri());

        nodeConfiguration.setNodeName("talker");
        nodeMainExecutor.execute(talker, nodeConfiguration);
    }*/
}

