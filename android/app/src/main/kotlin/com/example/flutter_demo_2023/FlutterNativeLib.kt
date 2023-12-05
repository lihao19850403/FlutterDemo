package com.example.flutter_demo_2023

import io.flutter.plugin.common.BinaryMessenger
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler

/**
 * 原生插件注册。
 */
class FlutterNativeLib: MethodCallHandler {

    companion object {

        /**
         * 将当前插件库注册进系统。
         */
        fun registerWith(messenger: BinaryMessenger) {
            val channel = MethodChannel(messenger, "flutter_plugin_demo")
            channel.setMethodCallHandler(FlutterNativeLib())
        }
    }

    /**
     * 执行插件函数。
     */
    override fun onMethodCall(call: MethodCall, result: MethodChannel.Result) {
        when (call.method) {
            "getPlatformVersion" -> {
                result.success("Android " + android.os.Build.VERSION.RELEASE)
            }
            else -> { // 没有找到调用的函数名。
                result.error("errorCode", "errorMessage", "Not Implemented!")
            }
        }
    }
}