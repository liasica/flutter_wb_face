import 'flutter_wb_face_platform_interface.dart';

import 'models/models.dart';

class FlutterWbFace {
  /// 请求OCR
  Future<WbOcrResultModel?> ocr(WbRequestModel data) => FlutterWbFacePlatform.instance.ocr(data);

  /// 请求人脸识别
  Future face() => FlutterWbFacePlatform.instance.face();
}
