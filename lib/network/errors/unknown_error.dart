import 'package:gallery_unsplash/network/shared/api_error_type.dart';
import 'package:gallery_unsplash/network/shared/api_error.dart';

class UnknownError extends APIError {
  UnknownError() : super(
    readableError: 'Unknown Error',
    errorCode: 1002,
    type: APIErrorType.unknownError,
  );
}