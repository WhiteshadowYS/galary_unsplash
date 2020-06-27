import 'package:digital_home/models/dto/auth_request_dto.dart';
import 'package:digital_home/models/models/user.dart';
import 'package:digital_home/network/shared/api_error.dart';
import 'package:digital_home/network/shared/base_response.dart';
import 'package:digital_home/res/consts.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  // region [Initialize]
  static const String TAG = '[AuthService]';

  AuthService._privateConstructor();

  static final AuthService _instance = AuthService._privateConstructor();

  static AuthService get instance => _instance;
  // endregion

  FirebaseAuth _authInstance = FirebaseAuth.instance;

  Future<BaseResponse<User>> signIn(AuthRequestDTO dto) async {
    try {
      AuthResult _result = await _authInstance.signInWithEmailAndPassword(
        email: dto.email,
        password: dto.password,
      );

      if (_result.user != null) {
        return BaseResponse<User>(
          response: User(
            id: _result.user.uid,
            name: _result.user.displayName,
            email: _result.user.email,
          ),
        );
      }

    } catch (e) {
      logger.e(e.toString());
      return BaseResponse<User>(
        error: APIError.getParsingError(e.toString()),
      );
    }
  }
}