import 'package:digital_home/network/shared/api_error_type.dart';
import 'package:digital_home/network/errors/unknown_error.dart';

class APIError {
  final int errorCode;
  final String readableError;
  final APIErrorType type;

  APIError({this.readableError, this.errorCode, this.type});

  static APIError getErrorByCode(int code) {
    switch (code) {

      default:
        return UnknownError();
    }
  }

  static APIError getHttpError(int code, String message) {
    return APIError(readableError: message, errorCode: code, type: APIErrorType.httpError);
  }

  static APIError getParsingError(String message) {
    return APIError(readableError: message, errorCode: 0, type: APIErrorType.parsingError);
  }
}
