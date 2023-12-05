package com.example.flutter_demo_2023

import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine

class MainActivity: FlutterActivity() {

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        FlutterNativeLib.registerWith(flutterEngine.dartExecutor.binaryMessenger)
    }
}
