import 'package:freezed_annotation/freezed_annotation.dart';

part 'wb_ocr_result_model.freezed.dart';
part 'wb_ocr_result_model.g.dart';

@freezed
class WbOcrResultModel with _$WbOcrResultModel {
  const factory WbOcrResultModel({
    String? idcard,
    String? name,
    String? sex,
    String? nation,
    String? address,
    String? birth,
    String? authority,
    String? validDate,
    String? frontWarning,
    String? backWarning,
    String? frontClarity,
    String? backClarity,
    String? frontCode,
    String? frontMsg,
    String? backCode,
    String? backMsg,
    String? frontCrop,
    String? backCrop,
  }) = _WbOcrResultModel;

  factory WbOcrResultModel.fromJson(Map<String, dynamic> json) => _$WbOcrResultModelFromJson(json);
}
