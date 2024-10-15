import 'package:docdoc/core/helpers/extensions.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'api_error_model.g.dart';

@JsonSerializable()
class ApiErrorModel {
  final String? message;
  // @JsonKey(name: "error_code")
  final int? code;
  @JsonKey(name: "data")
  final Map<String, dynamic>? errors;

  ApiErrorModel({this.message, this.code, this.errors});

  factory ApiErrorModel.fromJson(Map<String, dynamic> json) =>
      _$ApiErrorModelFromJson(json);
  Map<String, dynamic> toJson() => _$ApiErrorModelToJson(this);

  String getAllErrorsMessages() {
    if (errors.isNullOrEmpty()) {
      return message ?? 'Unknown Error occured';
    }
    final errorMessage = errors!.entries.map((entry) {
      final value = entry.value;
      return "${value.join(',')}";
    }).join('\n');

    return errorMessage;
  }
}
