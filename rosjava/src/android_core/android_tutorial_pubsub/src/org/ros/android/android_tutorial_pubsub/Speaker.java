package org.ros.android.android_tutorial_pubsub;

import org.ros.concurrent.CancellableLoop;
import org.ros.namespace.GraphName;
import org.ros.node.AbstractNodeMain;
import org.ros.node.ConnectedNode;
import org.ros.node.topic.Publisher;

public class Speaker extends AbstractNodeMain {
    private String topic_name;

    public Speaker() {
        this.topic_name = "chatter";
    }

    public Speaker(String topic) {
        this.topic_name = topic;
    }

    public GraphName getDefaultNodeName() {
        return GraphName.of("android_tutorial_pubsub/talker");
    }

    public void onStart(ConnectedNode connectedNode) {
        final Publisher<std_msgs.String> publisher = connectedNode.newPublisher(this.topic_name, "std_msgs/String");
        connectedNode.executeCancellableLoop(new CancellableLoop() {
            private int sequenceNumber;

            protected void setup() {
                this.sequenceNumber = 0;
            }

            protected void loop() throws InterruptedException {
                sensor_msgs.Imu sss;
                std_msgs.String str = (std_msgs.String)publisher.newMessage();
                str.setData("Hello world! " + this.sequenceNumber);
                publisher.publish(str);
                ++this.sequenceNumber;
                Thread.sleep(100L);
            }
        });
    }
}
