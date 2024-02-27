package com.example.flutter_demo_2023;

import androidx.annotation.NonNull;

import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.MethodChannel.MethodCallHandler;

/**
 * 原生插件注册。
 */
public class FlutterNativeLib implements MethodCallHandler {

    public static void registerWith(BinaryMessenger messenger) {
        MethodChannel channel = new MethodChannel(messenger, "flutter_plugin_demo");
        channel.setMethodCallHandler(new FlutterNativeLib());
    }

    /**
     * 执行插件函数。
     */
    @Override
    public void onMethodCall(@NonNull MethodCall call, @NonNull MethodChannel.Result result) {
        switch (call.method) {
            case "getPlatformVersion":
                result.success("Android " + android.os.Build.VERSION.RELEASE);
                break;
            default: // 没有找到调用的函数名。
                result.error("errorCode", "errorMessage", "Not Implemented!");
                break;
        }
    }
}
