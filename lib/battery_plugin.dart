import 'dart:async';

import 'package:flutter/services.dart';

class BatteryPlugin {
  static const MethodChannel _channel = MethodChannel('battery_plugin');

  static Future<int?> get batteryLevel async {
    final int? version = await _channel.invokeMethod('getBatteryLevel');
    return version;
  }
}
