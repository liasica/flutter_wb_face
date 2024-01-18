// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wb_face_verify_result_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WbFaceVerifyResultModel _$WbFaceVerifyResultModelFromJson(
    Map<String, dynamic> json) {
  return _WbFaceVerifyResultModel.fromJson(json);
}

/// @nodoc
mixin _$WbFaceVerifyResultModel {
  /// 人脸核身是否成功
  bool get isSuccess => throw _privateConstructorUsedError;

  /// 签名
  String get sign => throw _privateConstructorUsedError;

  /// 活体检测分数
  String get liveRate => throw _privateConstructorUsedError;

  /// 人脸比对分数
  String get similarity => throw _privateConstructorUsedError;

  /// 人脸核身错误
  String? get error => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WbFaceVerifyResultModelCopyWith<WbFaceVerifyResultModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WbFaceVerifyResultModelCopyWith<$Res> {
  factory $WbFaceVerifyResultModelCopyWith(WbFaceVerifyResultModel value,
          $Res Function(WbFaceVerifyResultModel) then) =
      _$WbFaceVerifyResultModelCopyWithImpl<$Res, WbFaceVerifyResultModel>;
  @useResult
  $Res call(
      {bool isSuccess,
      String sign,
      String liveRate,
      String similarity,
      String? error});
}

/// @nodoc
class _$WbFaceVerifyResultModelCopyWithImpl<$Res,
        $Val extends WbFaceVerifyResultModel>
    implements $WbFaceVerifyResultModelCopyWith<$Res> {
  _$WbFaceVerifyResultModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSuccess = null,
    Object? sign = null,
    Object? liveRate = null,
    Object? similarity = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      isSuccess: null == isSuccess
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      sign: null == sign
          ? _value.sign
          : sign // ignore: cast_nullable_to_non_nullable
              as String,
      liveRate: null == liveRate
          ? _value.liveRate
          : liveRate // ignore: cast_nullable_to_non_nullable
              as String,
      similarity: null == similarity
          ? _value.similarity
          : similarity // ignore: cast_nullable_to_non_nullable
              as String,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WbFaceVerifyResultModelImplCopyWith<$Res>
    implements $WbFaceVerifyResultModelCopyWith<$Res> {
  factory _$$WbFaceVerifyResultModelImplCopyWith(
          _$WbFaceVerifyResultModelImpl value,
          $Res Function(_$WbFaceVerifyResultModelImpl) then) =
      __$$WbFaceVerifyResultModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isSuccess,
      String sign,
      String liveRate,
      String similarity,
      String? error});
}

/// @nodoc
class __$$WbFaceVerifyResultModelImplCopyWithImpl<$Res>
    extends _$WbFaceVerifyResultModelCopyWithImpl<$Res,
        _$WbFaceVerifyResultModelImpl>
    implements _$$WbFaceVerifyResultModelImplCopyWith<$Res> {
  __$$WbFaceVerifyResultModelImplCopyWithImpl(
      _$WbFaceVerifyResultModelImpl _value,
      $Res Function(_$WbFaceVerifyResultModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSuccess = null,
    Object? sign = null,
    Object? liveRate = null,
    Object? similarity = null,
    Object? error = freezed,
  }) {
    return _then(_$WbFaceVerifyResultModelImpl(
      isSuccess: null == isSuccess
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      sign: null == sign
          ? _value.sign
          : sign // ignore: cast_nullable_to_non_nullable
              as String,
      liveRate: null == liveRate
          ? _value.liveRate
          : liveRate // ignore: cast_nullable_to_non_nullable
              as String,
      similarity: null == similarity
          ? _value.similarity
          : similarity // ignore: cast_nullable_to_non_nullable
              as String,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WbFaceVerifyResultModelImpl implements _WbFaceVerifyResultModel {
  const _$WbFaceVerifyResultModelImpl(
      {this.isSuccess = false,
      this.sign = '',
      this.liveRate = '',
      this.similarity = '',
      this.error});

  factory _$WbFaceVerifyResultModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$WbFaceVerifyResultModelImplFromJson(json);

  /// 人脸核身是否成功
  @override
  @JsonKey()
  final bool isSuccess;

  /// 签名
  @override
  @JsonKey()
  final String sign;

  /// 活体检测分数
  @override
  @JsonKey()
  final String liveRate;

  /// 人脸比对分数
  @override
  @JsonKey()
  final String similarity;

  /// 人脸核身错误
  @override
  final String? error;

  @override
  String toString() {
    return 'WbFaceVerifyResultModel(isSuccess: $isSuccess, sign: $sign, liveRate: $liveRate, similarity: $similarity, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WbFaceVerifyResultModelImpl &&
            (identical(other.isSuccess, isSuccess) ||
                other.isSuccess == isSuccess) &&
            (identical(other.sign, sign) || other.sign == sign) &&
            (identical(other.liveRate, liveRate) ||
                other.liveRate == liveRate) &&
            (identical(other.similarity, similarity) ||
                other.similarity == similarity) &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, isSuccess, sign, liveRate, similarity, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WbFaceVerifyResultModelImplCopyWith<_$WbFaceVerifyResultModelImpl>
      get copyWith => __$$WbFaceVerifyResultModelImplCopyWithImpl<
          _$WbFaceVerifyResultModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WbFaceVerifyResultModelImplToJson(
      this,
    );
  }
}

abstract class _WbFaceVerifyResultModel implements WbFaceVerifyResultModel {
  const factory _WbFaceVerifyResultModel(
      {final bool isSuccess,
      final String sign,
      final String liveRate,
      final String similarity,
      final String? error}) = _$WbFaceVerifyResultModelImpl;

  factory _WbFaceVerifyResultModel.fromJson(Map<String, dynamic> json) =
      _$WbFaceVerifyResultModelImpl.fromJson;

  @override

  /// 人脸核身是否成功
  bool get isSuccess;
  @override

  /// 签名
  String get sign;
  @override

  /// 活体检测分数
  String get liveRate;
  @override

  /// 人脸比对分数
  String get similarity;
  @override

  /// 人脸核身错误
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$WbFaceVerifyResultModelImplCopyWith<_$WbFaceVerifyResultModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
