import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'models/models.dart';
import 'flutter_wb_face_platform_interface.dart';

/// An implementation of [FlutterWbFacePlatform] that uses method channels.
class MethodChannelFlutterWbFace extends FlutterWbFacePlatform {
  static const _methodChannelName = 'com.liasica.flutter_wb_face/method';

  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel(_methodChannelName);

  @override
  Future<WbOcrResultModel?> ocr(WbOcrModel data) async {
    final result = await methodChannel.invokeMethod('ocr', data.toJson());
    return result == null ? null : WbOcrResultModel.fromJson(Map<String, dynamic>.from(result));
  }

  @override
  Future face() async {
    await methodChannel.invokeMethod('face');
  }
}
