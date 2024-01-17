// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wb_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WbRequestModelImpl _$$WbRequestModelImplFromJson(Map<String, dynamic> json) =>
    _$WbRequestModelImpl(
      appId: json['appId'] as String,
      userId: json['userId'] as String,
      orderNo: json['orderNo'] as String,
      version: json['version'] as String,
      nonce: json['nonce'] as String,
      sign: json['sign'] as String,
    );

Map<String, dynamic> _$$WbRequestModelImplToJson(
        _$WbRequestModelImpl instance) =>
    <String, dynamic>{
      'appId': instance.appId,
      'userId': instance.userId,
      'orderNo': instance.orderNo,
      'version': instance.version,
      'nonce': instance.nonce,
      'sign': instance.sign,
    };
