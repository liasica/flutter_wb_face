// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wb_ocr_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WbOcrModelImpl _$$WbOcrModelImplFromJson(Map<String, dynamic> json) =>
    _$WbOcrModelImpl(
      appId: json['appId'] as String,
      userId: json['userId'] as String,
      nonce: json['nonce'] as String,
      sign: json['sign'] as String,
      orderNo: json['orderNo'] as String,
    );

Map<String, dynamic> _$$WbOcrModelImplToJson(_$WbOcrModelImpl instance) =>
    <String, dynamic>{
      'appId': instance.appId,
      'userId': instance.userId,
      'nonce': instance.nonce,
      'sign': instance.sign,
      'orderNo': instance.orderNo,
    };
