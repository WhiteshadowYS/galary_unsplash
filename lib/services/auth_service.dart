import 'package:digital_home/models/dto/auth_request_dto.dart';
import 'package:digital_home/models/models/user.dart';

class AuthService {
  // region [Initialize]
  static const String TAG = '[AuthService]';

  AuthService._privateConstructor();

  static final AuthService _instance = AuthService._privateConstructor();

  static AuthService get instance => _instance;
  // endregion

  Future<User> signIn(AuthRequestDTO dto) async {
    return User(
      id: '0',
      name: 'Yura Shevelev',
      region: 'Odessa',
    );
  }
}