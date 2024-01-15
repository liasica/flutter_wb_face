// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wb_ocr_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WbOcrModel _$WbOcrModelFromJson(Map<String, dynamic> json) {
  return _WbOcrModel.fromJson(json);
}

/// @nodoc
mixin _$WbOcrModel {
  String get appId => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get nonce => throw _privateConstructorUsedError;
  String get sign => throw _privateConstructorUsedError;
  String get orderNo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WbOcrModelCopyWith<WbOcrModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WbOcrModelCopyWith<$Res> {
  factory $WbOcrModelCopyWith(
          WbOcrModel value, $Res Function(WbOcrModel) then) =
      _$WbOcrModelCopyWithImpl<$Res, WbOcrModel>;
  @useResult
  $Res call(
      {String appId, String userId, String nonce, String sign, String orderNo});
}

/// @nodoc
class _$WbOcrModelCopyWithImpl<$Res, $Val extends WbOcrModel>
    implements $WbOcrModelCopyWith<$Res> {
  _$WbOcrModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appId = null,
    Object? userId = null,
    Object? nonce = null,
    Object? sign = null,
    Object? orderNo = null,
  }) {
    return _then(_value.copyWith(
      appId: null == appId
          ? _value.appId
          : appId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      nonce: null == nonce
          ? _value.nonce
          : nonce // ignore: cast_nullable_to_non_nullable
              as String,
      sign: null == sign
          ? _value.sign
          : sign // ignore: cast_nullable_to_non_nullable
              as String,
      orderNo: null == orderNo
          ? _value.orderNo
          : orderNo // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WbOcrModelImplCopyWith<$Res>
    implements $WbOcrModelCopyWith<$Res> {
  factory _$$WbOcrModelImplCopyWith(
          _$WbOcrModelImpl value, $Res Function(_$WbOcrModelImpl) then) =
      __$$WbOcrModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String appId, String userId, String nonce, String sign, String orderNo});
}

/// @nodoc
class __$$WbOcrModelImplCopyWithImpl<$Res>
    extends _$WbOcrModelCopyWithImpl<$Res, _$WbOcrModelImpl>
    implements _$$WbOcrModelImplCopyWith<$Res> {
  __$$WbOcrModelImplCopyWithImpl(
      _$WbOcrModelImpl _value, $Res Function(_$WbOcrModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appId = null,
    Object? userId = null,
    Object? nonce = null,
    Object? sign = null,
    Object? orderNo = null,
  }) {
    return _then(_$WbOcrModelImpl(
      appId: null == appId
          ? _value.appId
          : appId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      nonce: null == nonce
          ? _value.nonce
          : nonce // ignore: cast_nullable_to_non_nullable
              as String,
      sign: null == sign
          ? _value.sign
          : sign // ignore: cast_nullable_to_non_nullable
              as String,
      orderNo: null == orderNo
          ? _value.orderNo
          : orderNo // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WbOcrModelImpl implements _WbOcrModel {
  const _$WbOcrModelImpl(
      {required this.appId,
      required this.userId,
      required this.nonce,
      required this.sign,
      required this.orderNo});

  factory _$WbOcrModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$WbOcrModelImplFromJson(json);

  @override
  final String appId;
  @override
  final String userId;
  @override
  final String nonce;
  @override
  final String sign;
  @override
  final String orderNo;

  @override
  String toString() {
    return 'WbOcrModel(appId: $appId, userId: $userId, nonce: $nonce, sign: $sign, orderNo: $orderNo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WbOcrModelImpl &&
            (identical(other.appId, appId) || other.appId == appId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.nonce, nonce) || other.nonce == nonce) &&
            (identical(other.sign, sign) || other.sign == sign) &&
            (identical(other.orderNo, orderNo) || other.orderNo == orderNo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, appId, userId, nonce, sign, orderNo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WbOcrModelImplCopyWith<_$WbOcrModelImpl> get copyWith =>
      __$$WbOcrModelImplCopyWithImpl<_$WbOcrModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WbOcrModelImplToJson(
      this,
    );
  }
}

abstract class _WbOcrModel implements WbOcrModel {
  const factory _WbOcrModel(
      {required final String appId,
      required final String userId,
      required final String nonce,
      required final String sign,
      required final String orderNo}) = _$WbOcrModelImpl;

  factory _WbOcrModel.fromJson(Map<String, dynamic> json) =
      _$WbOcrModelImpl.fromJson;

  @override
  String get appId;
  @override
  String get userId;
  @override
  String get nonce;
  @override
  String get sign;
  @override
  String get orderNo;
  @override
  @JsonKey(ignore: true)
  _$$WbOcrModelImplCopyWith<_$WbOcrModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
