// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wb_ocr_sign_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WbOcrSignModel {
  String get appid => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get ticket => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WbOcrSignModelCopyWith<WbOcrSignModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WbOcrSignModelCopyWith<$Res> {
  factory $WbOcrSignModelCopyWith(
          WbOcrSignModel value, $Res Function(WbOcrSignModel) then) =
      _$WbOcrSignModelCopyWithImpl<$Res, WbOcrSignModel>;
  @useResult
  $Res call({String appid, String userId, String ticket});
}

/// @nodoc
class _$WbOcrSignModelCopyWithImpl<$Res, $Val extends WbOcrSignModel>
    implements $WbOcrSignModelCopyWith<$Res> {
  _$WbOcrSignModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appid = null,
    Object? userId = null,
    Object? ticket = null,
  }) {
    return _then(_value.copyWith(
      appid: null == appid
          ? _value.appid
          : appid // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      ticket: null == ticket
          ? _value.ticket
          : ticket // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WbOcrSignModelImplCopyWith<$Res>
    implements $WbOcrSignModelCopyWith<$Res> {
  factory _$$WbOcrSignModelImplCopyWith(_$WbOcrSignModelImpl value,
          $Res Function(_$WbOcrSignModelImpl) then) =
      __$$WbOcrSignModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String appid, String userId, String ticket});
}

/// @nodoc
class __$$WbOcrSignModelImplCopyWithImpl<$Res>
    extends _$WbOcrSignModelCopyWithImpl<$Res, _$WbOcrSignModelImpl>
    implements _$$WbOcrSignModelImplCopyWith<$Res> {
  __$$WbOcrSignModelImplCopyWithImpl(
      _$WbOcrSignModelImpl _value, $Res Function(_$WbOcrSignModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appid = null,
    Object? userId = null,
    Object? ticket = null,
  }) {
    return _then(_$WbOcrSignModelImpl(
      appid: null == appid
          ? _value.appid
          : appid // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      ticket: null == ticket
          ? _value.ticket
          : ticket // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$WbOcrSignModelImpl extends _WbOcrSignModel {
  const _$WbOcrSignModelImpl(
      {required this.appid, required this.userId, required this.ticket})
      : super._();

  @override
  final String appid;
  @override
  final String userId;
  @override
  final String ticket;

  @override
  String toString() {
    return 'WbOcrSignModel(appid: $appid, userId: $userId, ticket: $ticket)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WbOcrSignModelImpl &&
            (identical(other.appid, appid) || other.appid == appid) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.ticket, ticket) || other.ticket == ticket));
  }

  @override
  int get hashCode => Object.hash(runtimeType, appid, userId, ticket);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WbOcrSignModelImplCopyWith<_$WbOcrSignModelImpl> get copyWith =>
      __$$WbOcrSignModelImplCopyWithImpl<_$WbOcrSignModelImpl>(
          this, _$identity);
}

abstract class _WbOcrSignModel extends WbOcrSignModel {
  const factory _WbOcrSignModel(
      {required final String appid,
      required final String userId,
      required final String ticket}) = _$WbOcrSignModelImpl;
  const _WbOcrSignModel._() : super._();

  @override
  String get appid;
  @override
  String get userId;
  @override
  String get ticket;
  @override
  @JsonKey(ignore: true)
  _$$WbOcrSignModelImplCopyWith<_$WbOcrSignModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
