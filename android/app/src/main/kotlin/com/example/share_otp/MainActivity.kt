package com.example.share_otp

import androidx.annotation.NonNull
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.android.FlutterFragmentActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel
import android.telephony.SmsManager
import android.content.pm.PackageManager
import android.Manifest
import androidx.core.app.ActivityCompat
import androidx.core.content.ContextCompat


class MainActivity: FlutterFragmentActivity() {


    // override fun configureFlutterEngine(@NonNull flutterEngine: FlutterEngine) {
    //     super.configureFlutterEngine(flutterEngine)
    //     MethodChannel(flutterEngine.dartExecutor.binaryMessenger, CHANNEL).setMethodCallHandler { call, result ->
    //         if (call.method == "sendSMS") {
    //             val address = call.argument<String>("address")
    //             val body = call.argument<String>("body")
    //             if (address != null && body != null) {
    //                 sendSMS(address, body, result)
    //             } else {
    //                 result.error("INVALID_ARGUMENT", "Address or body is null", null)
    //             }
    //         } else {
    //             result.notImplemented()
    //         }
    //     }
    // }

    // private fun sendSMS(address: String, body: String, result: MethodChannel.Result) {
    //     if (ContextCompat.checkSelfPermission(this, Manifest.permission.SEND_SMS) != PackageManager.PERMISSION_GRANTED) {
    //         ActivityCompat.requestPermissions(this, arrayOf(Manifest.permission.SEND_SMS), PERMISSION_REQUEST_CODE)
    //         result.error("PERMISSION_DENIED", "SMS permission not granted", null)
    //     } else {
    //         try {
    //             val smsManager = SmsManager.getDefault()
    //             smsManager.sendTextMessage(address, null, body, null, null)
    //             result.success("SMS sent successfully")
    //         } catch (e: Exception) {
    //             result.error("SMS_FAILED", "Failed to send SMS", e.message)
    //         }
    //     }
    // }

    // override fun onRequestPermissionsResult(requestCode: Int, permissions: Array<out String>, grantResults: IntArray) {
    //     if (requestCode == PERMISSION_REQUEST_CODE) {
    //         if (grantResults.isNotEmpty() && grantResults[0] == PackageManager.PERMISSION_GRANTED) {
    //             // Permission granted, you might want to retry sending the SMS here
    //         } else {
    //             // Permission denied
    //         }
    //     }
    // }


}