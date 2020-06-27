import 'package:digital_home/models/dto/auth_request_dto.dart';
import 'package:digital_home/models/models/user.dart';
import 'package:digital_home/network/shared/base_response.dart';
import 'package:digital_home/services/auth_service.dart';

class AuthRepository {
  // region [Initialize]
  static const String TAG = '[AuthRepository]';

  AuthRepository._privateConstructor();

  static final AuthRepository _instance = AuthRepository._privateConstructor();

  static AuthRepository get instance => _instance;
  // endregion

  Future<BaseResponse<User>> signIn(AuthRequestDTO dto) {
    return AuthService.instance.signIn(dto);
  }
}