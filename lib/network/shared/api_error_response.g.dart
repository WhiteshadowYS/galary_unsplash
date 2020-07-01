// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_error_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

APIErrorResponse _$APIErrorResponseFromJson(Map<String, dynamic> json) {
  return APIErrorResponse(
    data: json['ErrorCode'] as int,
    errorCategory: json['ErrorCategory'] as String,
    errorMessage: json['ErrorMessage'] as String,
  );
}

Map<String, dynamic> _$APIErrorResponseToJson(APIErrorResponse instance) =>
    <String, dynamic>{
      'ErrorCode': instance.data,
      'ErrorCategory': instance.errorCategory,
      'ErrorMessage': instance.errorMessage,
    };
