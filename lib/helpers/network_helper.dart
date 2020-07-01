import 'dart:convert';

import 'package:gallery_unsplash/helpers/internet_connection_helper.dart';
import 'package:gallery_unsplash/network/shared/api_error.dart';
import 'package:gallery_unsplash/network/shared/api_error_response.dart';
import 'package:gallery_unsplash/network/shared/base_network_response.dart';
import 'package:gallery_unsplash/res/consts.dart';
import 'package:http/http.dart' as http;

enum HttpType {
  get,
  put,
  post,
  delete,
}

class HttpHelper {
  // region [Initialize]
  static const String TAG = '[HttpHelperRepository]';

  HttpHelper._privateConstructor();

  static final HttpHelper _instance = HttpHelper._privateConstructor();

  static HttpHelper get instance => _instance;

  // endregion

  static const String _BASE_URL = 'https://api.unsplash.com/';
  static const String TEST_TOKEN = 'cf49c08b444ff4cb9e4d126b7e9f7513ba1ee58de7906e4360afc1a33d1bf4c0';

  Future<BaseNetworkResponse> request(
    String route, {
    HttpType type = HttpType.get,
    Map<String, String> headers,
    Map<String, String> params,
    Map<String, dynamic> body,
    String token = EMPTY_STRING,
  }) async {
    BaseNetworkResponse connection = await InternetConnectionHelper.instance.hasInternetConnectionResponse();

    if (connection != null) {
      return connection;
    }

    if (headers == null) headers = {};

    if (token != null && token != EMPTY_STRING) headers = _addTokenToHeaders(headers, token);

    String bodyString = EMPTY_STRING;

    if (body != null) {
      bodyString = json.encode(body);
      headers.addEntries([
        MapEntry(ACCEPT, CONTENT_TYPE_VALUE),
        MapEntry(CONTENT_TYPE_KEY, CONTENT_TYPE_VALUE),
      ]);
    }

    final String url = _attachParams(_BASE_URL, route, params);

    try {
      http.Response response;
      switch (type) {
        case HttpType.get:
          response = await http.get(url, headers: headers);
          print('$TAG => <request> => get response: $response');
          break;
        case HttpType.post:
          response = await http.post(
            url,
            headers: headers,
            body: bodyString,
          );
          print('$TAG => <request> => post response: $response');

          break;
        case HttpType.put:
          response = await http.put(url, headers: headers, body: bodyString);
          print('$TAG => <request> => put response: $response');
          break;
        case HttpType.delete:
          response = await http.delete(url, headers: headers);
          print('$TAG  => <request> => delete response: $response');
          break;
        default:
          response = await http.post(url, headers: headers, body: bodyString);
          print('$TAG => <request> => default response: $response');
          break;
      }

      if (response.body != null && json.decode(response.body)[DATA] != null) {
        return BaseNetworkResponse(response: json.decode(response.body));
      }

      if (_checkIfHttpError(response.statusCode)) {
        print('$TAG => <request> => [_checkIfHttpError SERVICE BODY] => ${response.body}');

        if (_checkIfUnprocessableEntity(response.statusCode)) {
          return BaseNetworkResponse(error: APIError.getErrorByCode(APIErrorResponse.fromJson(json.decode(response.body)).data));
        }

        return BaseNetworkResponse(error: APIError.getHttpError(response.statusCode, response.reasonPhrase));
      }

      return BaseNetworkResponse(response: json.decode(response.body));
    } catch (error) {
      return BaseNetworkResponse(
        error: APIError.getParsingError(
          error.toString(),
        ),
      );
    }
  }

  bool _checkIfHttpError(int statusCode) {
    return statusCode < HTTP_OK || statusCode > HTTP_MAX_OK;
  }

  bool _checkIfUnprocessableEntity(int statusCode) {
    return statusCode == HTTP_UNPROCESSABLE;
  }

  String _createParamString(String key, String value) {
    return key + '=' + value;
  }

  String _attachParams(String base, String originalRoute, Map<String, String> params) {
    if (params != null) {
      List<String> paramStrings = params.map((key, value) => MapEntry(key, _createParamString(key, value))).values.toList();
      for (int i = 0; i < paramStrings.length; i++) {
        originalRoute += i == 0 ? '?' : '&';
        originalRoute += paramStrings[i];
      }
    }
    return base + originalRoute;
  }

  Map<String, String> _addTokenToHeaders(Map<String, String> headers, String token) {
    print('$TAG => [_addTokenToHeaders] => ' + token);
    if (headers == null) headers = Map();

    headers.addEntries([MapEntry(TOKEN_KEY, TOKEN_BASE + token)]);
    return headers;
  }
}
