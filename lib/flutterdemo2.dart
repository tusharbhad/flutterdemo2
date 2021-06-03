
import 'dart:async';

import 'package:flutter/services.dart';

class Flutterdemo2 {
  static const MethodChannel _channel =
      const MethodChannel('flutterdemo2');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }

  static Future<String?> get something async {
    final String? version = await _channel.invokeMethod('getSomething');
    return version;
  }
}
