import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'wb_face_verify_model.freezed.dart';
part 'wb_face_verify_model.g.dart';

@freezed
class WbFaceVerifyModel with _$WbFaceVerifyModel {
  const factory WbFaceVerifyModel({
    String? appId,
    String? faceId,
    String? licence,
    String? nonce,
    String? orderNo,
    String? sign,
    String? userId,
    String? version,
  }) = _WbFaceVerifyModel;

  factory WbFaceVerifyModel.fromJson(Map<String, Object?> json) => _$WbFaceVerifyModelFromJson(json);
}
