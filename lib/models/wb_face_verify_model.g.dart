// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wb_face_verify_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WbFaceVerifyModelImpl _$$WbFaceVerifyModelImplFromJson(
        Map<String, dynamic> json) =>
    _$WbFaceVerifyModelImpl(
      appId: json['appId'] as String?,
      faceId: json['faceId'] as String?,
      licence: json['licence'] as String?,
      nonce: json['nonce'] as String?,
      orderNo: json['orderNo'] as String?,
      sign: json['sign'] as String?,
      userId: json['userId'] as String?,
      version: json['version'] as String?,
    );

Map<String, dynamic> _$$WbFaceVerifyModelImplToJson(
        _$WbFaceVerifyModelImpl instance) =>
    <String, dynamic>{
      'appId': instance.appId,
      'faceId': instance.faceId,
      'licence': instance.licence,
      'nonce': instance.nonce,
      'orderNo': instance.orderNo,
      'sign': instance.sign,
      'userId': instance.userId,
      'version': instance.version,
    };
