package com.student.define_env_demo

import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugins.GeneratedPluginRegistrant


class MainActivity: FlutterActivity() {
    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        GeneratedPluginRegistrant.registerWith(flutterEngine)
        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, "flavor")
            .setMethodCallHandler { call: MethodCall?, result: MethodChannel.Result ->
//                BuildConfig.productFlavors
                result.success(
                    BuildConfig.FLAVOR
                )
            }
    }
}
