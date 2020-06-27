import 'package:data_connection_checker/data_connection_checker.dart';

class InternetConnectionHelper {
  // region [Initialization]
  static const String TAG = '[InternetConnectionHelper]';

  InternetConnectionHelper._privateConstructor();

  static final InternetConnectionHelper _instance = InternetConnectionHelper._privateConstructor();

  static InternetConnectionHelper get instance => _instance;
  // endregion

  static Future<bool> hasInternetConnection() async {
    try {
      bool hasInternetConnection = await DataConnectionChecker().hasConnection;

      print('$TAG => <hasInternetConnection> => Has conneted to internet?: $hasInternetConnection');

      return hasInternetConnection;
    } catch (e) {
      print('$TAG => <request> => catch error: $e');
      return false;
    }
  }

  static Future<void> hasInternetConnectionResponse() async {
    try {
      bool hasInternetConnection = await DataConnectionChecker().hasConnection;

      print('$TAG => <hasInternetConnection> => Has conneted to internet?: $hasInternetConnection');

      if (!hasInternetConnection) {
//        return BaseNetworkResponse(
//          error: APIError.getParsingError(
//            NO_INTERNET_CONNECTION_ERROR,
//          ),
//        );
      }

      return null;
    } catch (e) {
      print('$TAG => <request> => catch error: $e');
//      return BaseNetworkResponse(
//        error: APIError.getParsingError(INTERNET_CONNECTION_CATCH_ERROR),
//      );
    }
  }
}