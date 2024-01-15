import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutter_wb_face_method_channel.dart';
import 'models/models.dart';

abstract class FlutterWbFacePlatform extends PlatformInterface {
  /// Constructs a FlutterWbFacePlatform.
  FlutterWbFacePlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterWbFacePlatform _instance = MethodChannelFlutterWbFace();

  /// The default instance of [FlutterWbFacePlatform] to use.
  ///
  /// Defaults to [MethodChannelFlutterWbFace].
  static FlutterWbFacePlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterWbFacePlatform] when
  /// they register themselves.
  static set instance(FlutterWbFacePlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<WbOcrResultModel?> ocr(WbOcrModel data) {
    throw UnimplementedError('ocr() has not been implemented.');
  }
}
