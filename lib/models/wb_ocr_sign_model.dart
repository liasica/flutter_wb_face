import 'package:freezed_annotation/freezed_annotation.dart';

import '../helpers/helpers.dart';

part 'wb_ocr_sign_model.freezed.dart';

@freezed
class WbOcrSignModel extends Sign with _$WbOcrSignModel {
  const WbOcrSignModel._() : super();

  const factory WbOcrSignModel({
    required String appid,
    required String userId,
    required String ticket,
  }) = _WbOcrSignModel;

  @override
  String generateNonce() => generateRandomString(32);

  @override
  Map<String, dynamic> toMap() {
    return {
      'appid': appid,
      'userId': userId,
      'version': '1.0.0',
      'ticket': ticket,
    };
  }
}
