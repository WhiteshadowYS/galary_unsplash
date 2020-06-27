import 'package:digital_home/models/models/user.dart';
import 'package:digital_home/network/shared/api_error.dart';
import 'package:digital_home/network/shared/base_response.dart';
import 'package:digital_home/res/consts.dart';
import 'package:firebase_auth/firebase_auth.dart';

class InitializeService {
  // region [Initialize]
  static const String TAG = '[InitializeService]';

  InitializeService._privateConstructor();

  static final InitializeService _instance = InitializeService._privateConstructor();

  static InitializeService get instance => _instance;

  // endregion

  Future<BaseResponse<User>> initialize() async {
    try {
      FirebaseUser user = await FirebaseAuth.instance.currentUser();

      if (user != null) {
        return BaseResponse<User>(
          response: User(
            id: user.uid,
            email: user.email,
            name: user.displayName,
          ),
        );
      }

      return BaseResponse<User>(
        response: null,
      );
    } catch (e) {
      logger.e(e.toString());
      return BaseResponse(
        error: APIError.getParsingError(e.toString()),
      );
    }
  }
}
