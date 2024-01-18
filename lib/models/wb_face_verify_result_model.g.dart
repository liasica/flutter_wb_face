// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wb_face_verify_result_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WbFaceVerifyResultModelImpl _$$WbFaceVerifyResultModelImplFromJson(
        Map<String, dynamic> json) =>
    _$WbFaceVerifyResultModelImpl(
      isSuccess: json['isSuccess'] as bool? ?? false,
      sign: json['sign'] as String? ?? '',
      liveRate: json['liveRate'] as String? ?? '',
      similarity: json['similarity'] as String? ?? '',
      error: json['error'] as String?,
    );

Map<String, dynamic> _$$WbFaceVerifyResultModelImplToJson(
        _$WbFaceVerifyResultModelImpl instance) =>
    <String, dynamic>{
      'isSuccess': instance.isSuccess,
      'sign': instance.sign,
      'liveRate': instance.liveRate,
      'similarity': instance.similarity,
      'error': instance.error,
    };
