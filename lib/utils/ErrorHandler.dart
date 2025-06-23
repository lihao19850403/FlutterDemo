import 'package:flutter/foundation.dart';

void reportErrorAndLog(FlutterErrorDetails details) {
  print('发生了异常！');
  collectLog(details.toString());
}

void collectLog(String log) {
  print('收集日志信息：$log');
}