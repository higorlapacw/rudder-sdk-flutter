import 'dart:async';

import 'package:flutter/services.dart';
import 'package:rudder_sdk_flutter_platform_interface/platform.dart';
import 'package:rudder_sdk_flutter_platform_interface/rudder_sdk_platform.dart';

const MethodChannel _platformChannel = MethodChannel('rudder_sdk_flutter');

/// An implementation for RudderSdk for ios platform

class RudderSdkFlutterIos extends RudderSdkPlatform {
  /// Register this class
  static void registerWith() {
    RudderSdkPlatform.instance = RudderSdkFlutterIos();
  }

  @override
  void initialize(String writeKey,
      {RudderConfig? config, RudderOption? options}) {}

  @override
  void identify(String userId, {RudderTraits? traits, RudderOption? options}) {}

  @override
  void track(String eventName,
      {RudderProperty? properties, RudderOption? options}) {}

  @override
  void screen(String screenName,
      {String? category, RudderProperty? properties, RudderOption? options}) {}

  @override
  void group(String groupId,
      {RudderTraits? groupTraits, RudderOption? options}) {}

  @override
  void alias(String newId, {RudderOption? options}) {}

  @override
  void reset() {}

  @override
  void optOut(bool optOut) {}

  @override
  void putDeviceToken(String deviceToken) {}

  @override
  void putAdvertisingId(String advertisingId) {}

  @override
  void putAnonymousId(String anonymousId) {}

  @override
  Future<Map?> getRudderContext() async {
    return {};
  }
}
