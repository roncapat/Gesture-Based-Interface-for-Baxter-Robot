package emarolab.estimotebeaconshelloworld

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
import kotlinx.android.synthetic.main.activity_main.*

class MainActivity : WearableActivity() {

    /** Fields in this class */

    // Related to proximity methods
    private lateinit var proximityObserver: ProximityObserver
    private var proximityObservationHandler: ProximityObserver.Handler? = null

    // Could credentials found from https://cloud.estimote.com/
    private val cloudCredentials = EstimoteCloudCredentials("laboratorium-dibris-gmail--kfg", "90e1b9d8344624e9c2cd42b9f5fd6392")

    // Lambda functions for displaying errors when checking requirements
    private val displayToastAboutMissingRequirements: (List<Requirement>) -> Unit = { Toast.makeText(this, "Unable to start proximity observation. Requirements not fulfilled: ${it.size}", Toast.LENGTH_SHORT).show() }
    private val displayToastAboutError: (Throwable) -> Unit = { Toast.makeText(this, "Error while trying to start proximity observation: ${it.message}", Toast.LENGTH_SHORT).show() }

    // To get unique ID of app installation (The next 3 lines are related to 'fun id(context: Context): String'. Uncomment if required.)
/*    private var uniqueID: String? = null
    private val PREF_UNIQUE_ID = "PREF_UNIQUE_ID"
    private var UID: String? = null*/

    /** Methods in this class */

    // onCreate method runs first (when an application is launched)
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        // Enables Always-on
        setAmbientEnabled()

        // Requirements check
        RequirementsWizardFactory.createEstimoteRequirementsWizard().fulfillRequirements(
                this,
                onRequirementsFulfilled = { startProximityObservation() },
                onRequirementsMissing = displayToastAboutMissingRequirements,
                onError = displayToastAboutError
        )
    }

    // onDestroy method runs last (when an application is closed)
    override fun onDestroy() {
        super.onDestroy()
        // IMPORTANT (This applies for mobile app):
        // If you don't stop the scan here, the foreground service will remain active EVEN if the user kills your APP.
        // You can use it to retain scanning when app is killed, but you will need to handle actions properly.
        proximityObservationHandler?.stop()
    }

    // The method where you implement the logic for your application
    private fun startProximityObservation() {

        // get the UID (The next 2 lines are related to 'fun id(context: Context): String'. Uncomment if required.)
/*        UID = id(applicationContext)
        Log.d("UID is: ",UID)*/

        proximityObserver = ProximityObserverBuilder(applicationContext,cloudCredentials)
                .onError(displayToastAboutError)
                .withTelemetryReportingDisabled() //Added this to reduce the bluetooth call back traffic which was giving an error " Closed Bluetooth Low Energy scan failed with error code: 2"
                .withAnalyticsReportingDisabled() //Similarly this
                .withEstimoteSecureMonitoringDisabled() //Similarly this
                .withBalancedPowerMode()
                .build()

        val pinkBeacon = ProximityZoneBuilder()
                .forTag("Z2")
                .inNearRange()
                .onEnter{
                    Log.d("Debug.. ", "Currently near the pink beacon")
                    pink.text = "Currently near pink beacon"

                }
                .onExit{
                    Log.d("Debug.. ", "Previously you were near the pink beacon")
                    pink.text = "Previously you were near pink beacon"
                }
                .build()

        val yellowBeacon = ProximityZoneBuilder()
                .forTag("Z1")
                .inNearRange()
                .onEnter{
                    Log.d("Debug.. ", "Currently near the yellow beacon")
                    yellow.text = "Currently near yellow beacon"
                }
                .onExit{
                    Log.d("Debug.. ", "Previously you were near the yellow beacon")
                    yellow.text = "Previously you were near yellow beacon"
                }
                .build()

        proximityObservationHandler = proximityObserver.startObserving(pinkBeacon, yellowBeacon)
    }

    // To get a uniqueID for the smartDevice (Note: with every new installation of the app, we get a new uniqueID for the device)
    // This function is useful, if your app. deals with multiple smart devices (Therefore, uncomment it, if required).
/*    @Synchronized
    fun id(context: Context): String {
        if (uniqueID == null) {
            val sharedPrefs = context.getSharedPreferences(
                    PREF_UNIQUE_ID, Context.MODE_PRIVATE)
            uniqueID = sharedPrefs.getString(PREF_UNIQUE_ID, null)
            if (uniqueID == null) {
                uniqueID = UUID.randomUUID().toString()
                val editor = sharedPrefs.edit()
                editor.putString(PREF_UNIQUE_ID, uniqueID)
                editor.apply()
            }
        }
        return uniqueID as String
    }*/
}
