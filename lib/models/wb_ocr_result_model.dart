import 'package:freezed_annotation/freezed_annotation.dart';

part 'wb_ocr_result_model.freezed.dart';
part 'wb_ocr_result_model.g.dart';

@freezed
class WbOcrResultModel with _$WbOcrResultModel {
  const factory WbOcrResultModel({
    /// 身份证号
    String? idcard,

    /// 姓名
    String? name,

    /// 性别
    String? sex,

    /// 民族
    String? nation,

    /// 住址
    String? address,

    /// 出生日期
    String? birth,

    /// 签发机关
    String? authority,

    /// 有效期限
    String? validDate,

    /// 人像面警告
    String? frontWarning,

    /// 国徽面警告
    String? backWarning,

    /// 人像面清晰度
    String? frontClarity,

    /// 国徽面清晰度
    String? backClarity,

    /// 人像面识别结果码
    String? frontCode,

    /// 人像面识别结果描述
    String? frontMsg,

    /// 国徽面识别结果码
    String? backCode,

    /// 国徽面识别结果描述
    String? backMsg,

    /// 人像面切图
    String? frontCrop,

    /// 国徽面切图
    String? backCrop,
  }) = _WbOcrResultModel;

  factory WbOcrResultModel.fromJson(Map<String, dynamic> json) => _$WbOcrResultModelFromJson(json);
}
