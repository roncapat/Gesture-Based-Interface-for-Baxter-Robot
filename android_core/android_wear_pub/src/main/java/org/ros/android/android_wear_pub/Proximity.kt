package org.ros.android.android_wear_pub

import android.os.Bundle
import android.support.wearable.activity.WearableActivity
import android.util.Log
import android.widget.Toast
import com.estimote.mustard.rx_goodness.rx_requirements_wizard.Requirement
import com.estimote.mustard.rx_goodness.rx_requirements_wizard.RequirementsWizardFactory
import com.estimote.proximity_sdk.api.EstimoteCloudCredentials
import com.estimote.proximity_sdk.api.ProximityObserver
import com.estimote.proximity_sdk.api.ProximityObserverBuilder
import com.estimote.proximity_sdk.api.ProximityZoneBuilder
import org.ros.android.RosActivity
import org.ros.node.NodeConfiguration
import org.ros.node.NodeMainExecutor
import java.net.URI


class Proximity() : RosActivity("Pubsub Tutorial", "Pubsub Tutorial", URI.create("http://192.168.43.233:11311")) {

    private var talkerPink: Speaker? = null
    private var talkerYellow: Speaker? = null
    private lateinit var proximityObserver: ProximityObserver
    private var proximityObservationHandler: ProximityObserver.Handler? = null

    private val cloudCredentials = EstimoteCloudCredentials("laboratorium-dibris-gmail--kfg", "90e1b9d8344624e9c2cd42b9f5fd6392")

    private val displayToastAboutMissingRequirements: (List<Requirement>) -> Unit = { Toast.makeText(this, "Unable to start proximity observation. Requirements not fulfilled: ${it.size}", Toast.LENGTH_SHORT).show() }
    private val displayToastAboutError: (Throwable) -> Unit = { Toast.makeText(this, "Error while trying to start proximity observation: ${it.message}", Toast.LENGTH_SHORT).show() }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.prox)

        setAmbientEnabled()

        RequirementsWizardFactory.createEstimoteRequirementsWizard().fulfillRequirements(
                this,
                onRequirementsFulfilled = { startProximityObservation() },
                onRequirementsMissing = displayToastAboutMissingRequirements,
                onError = displayToastAboutError
        )
    }

    override fun onDestroy() {
        super.onDestroy()
        proximityObservationHandler?.stop()
    }

    private fun startProximityObservation() {

        proximityObserver = ProximityObserverBuilder(applicationContext,cloudCredentials)
                .onError(displayToastAboutError)
                .withTelemetryReportingDisabled()
                .withAnalyticsReportingDisabled()
                .withEstimoteSecureMonitoringDisabled()
                .withBalancedPowerMode()
                .build()

        val pinkBeacon = ProximityZoneBuilder()
                .forTag("Z2")
                .inNearRange()
                .onEnter{
                    Log.d("Debug.. ", "Currently near the pink beacon")
                    talkerPink?.presence = true
                }
                .onExit{
                    Log.d("Debug.. ", "Previously you were near the pink beacon")
                    talkerPink?.presence = false
                }
                .build()

        val yellowBeacon = ProximityZoneBuilder()
                .forTag("Z1")
                .inNearRange()
                .onEnter{
                    Log.d("Debug.. ", "Currently near the yellow beacon")
                    talkerYellow?.presence = true
                }
                .onExit{
                    Log.d("Debug.. ", "Previously you were near the yellow beacon")
                    talkerYellow?.presence = false
                }
                .build()

        proximityObservationHandler = proximityObserver.startObserving(pinkBeacon, yellowBeacon)
    }

    override fun init(nodeMainExecutor: NodeMainExecutor) {
        talkerPink = Speaker("/beacon/pink/presence");
        talkerYellow = Speaker("/beacon/yellow/presence");

        val nodeConfiguration = NodeConfiguration.newPublic(rosHostname)
        nodeConfiguration.masterUri = masterUri

        val nodeConfiguration2 = NodeConfiguration.newPublic(rosHostname)
        nodeConfiguration2.masterUri = masterUri

        nodeConfiguration.setNodeName("talkerPink")
        nodeMainExecutor.execute(talkerPink, nodeConfiguration)

        nodeConfiguration2.setNodeName("talkerYellow")
        nodeMainExecutor.execute(talkerYellow, nodeConfiguration2)
    }
}