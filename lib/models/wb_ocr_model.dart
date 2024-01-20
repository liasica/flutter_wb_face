import 'package:freezed_annotation/freezed_annotation.dart';

part 'wb_ocr_model.freezed.dart';
part 'wb_ocr_model.g.dart';

/// [appId] 人脸核身控制台内申请的WBappid[String]
/// [userId] 个用户唯一的标识[String]
/// [nonce] 每次请求需要的一次性[String]，一次有效
/// [sign] 根据参数生成的签名信息[String]，一次有效，签名生成方法见：[腾讯文档](https://cloud.tencent.com/document/product/1007/35832)
/// [orderNo] 每次OCR识别请求的唯一订单号[String]，建议为32位字符串(不超过32位)
@freezed
class WbOcrModel with _$WbOcrModel {
  const factory WbOcrModel({
    required String appId,
    required String userId,
    required String orderNo,
    required String version,
    required String nonce,
    required String sign,
  }) = _WbOcrModel;

  factory WbOcrModel.fromJson(Map<String, dynamic> json) => _$WbOcrModelFromJson(json);
}
