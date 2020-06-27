import 'package:digital_home/models/models/user.dart';
import 'package:digital_home/network/shared/base_response.dart';
import 'package:digital_home/services/initialize_service.dart';

class InitializationRepository {
  // region [Initialize]
  static const String TAG = '[InitializationRepository]';

  InitializationRepository._privateConstructor();

  static final InitializationRepository _instance = InitializationRepository._privateConstructor();

  static InitializationRepository get instance => _instance;
  // endregion

  Future<BaseResponse<User>> initialization() {
    return InitializeService.instance.initialize();
  }
}