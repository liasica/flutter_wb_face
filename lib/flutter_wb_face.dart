import 'flutter_wb_face_platform_interface.dart';

import 'models/models.dart';

class FlutterWbFace {
  /// 请求OCR
  /// [appId] 人脸核身控制台内申请的WBappid[String]
  /// [userId] 用户唯一标识[String]
  /// [orderNo] 每次OCR识别请求的唯一订单号[String]，建议为32位字符串(不超过32位)
  Future<WbOcrResultModel?> ocr({
    required String appId,
    required String userId,
    required String orderNo,
    required String ticket,
  }) async {
    final (sign, nonce) = WbOcrSignModel(
      appid: appId,
      userId: userId,
      ticket: ticket,
    ).toSign();

    return FlutterWbFacePlatform.instance.ocr(WbOcrModel(
      appId: appId,
      userId: userId,
      orderNo: orderNo,
      sign: sign,
      nonce: nonce,
    ));
  }
}
