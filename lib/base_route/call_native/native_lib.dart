import 'package:flutter/services.dart';

class NativeLib {
  // 与native平台通信的channel。
  static const MethodChannel _channel = MethodChannel("flutter_plugin_demo");

  // 获取所在平台的信息。
  static Future<String> getPlatformVersion() async {
    String result;
    try {
      result = await _channel.invokeMethod("getPlatformVersion");
    } on Exception catch (e) {
      result = "出现了异常：${e.toString()}";
    }
    return result;
  }
}
