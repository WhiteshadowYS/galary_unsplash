import 'package:json_annotation/json_annotation.dart';

part 'api_error_response.g.dart';

/// This model assumes the json response from the server is in the form of:
/// {
///   data: //error code
/// }
@JsonSerializable(nullable: false)
class APIErrorResponse {
  @JsonKey(name: "ErrorCode")
  final int data;
  @JsonKey(name: "ErrorCategory")
  final String errorCategory;
  @JsonKey(name: "ErrorMessage")
  final String errorMessage;

  APIErrorResponse({this.data, this.errorCategory, this.errorMessage});

  factory APIErrorResponse.fromJson(Map<String, dynamic> json) => _$APIErrorResponseFromJson(json);

  Map<String, dynamic> toJson() => _$APIErrorResponseToJson(this);
}
