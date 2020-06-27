import 'package:digital_home/network/shared/api_error.dart';

/// wrapper of the responses we get from the server, to allow for easy return of
/// error or response based on the result
class BaseNetworkResponse {
  APIError error;

  Map<String, dynamic> response;

  BaseNetworkResponse({this.error, this.response});
}
