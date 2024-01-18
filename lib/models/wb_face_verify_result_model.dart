import 'package:freezed_annotation/freezed_annotation.dart';

part 'wb_face_verify_result_model.freezed.dart';
part 'wb_face_verify_result_model.g.dart';

@freezed
class WbFaceVerifyResultModel with _$WbFaceVerifyResultModel {
  const factory WbFaceVerifyResultModel({
    /// 人脸核身是否成功
    @Default(false) bool isSuccess,

    /// 签名
    @Default('') String sign,

    /// 活体检测分数
    @Default('') String liveRate,

    /// 人脸比对分数
    @Default('') String similarity,

    /// 人脸核身错误
    String? error,
  }) = _WbFaceVerifyResultModel;

  factory WbFaceVerifyResultModel.fromJson(Map<String, dynamic> json) => _$WbFaceVerifyResultModelFromJson(json);
}
