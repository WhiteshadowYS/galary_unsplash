import 'package:gallery_unsplash/models/models/user.dart';
import 'package:gallery_unsplash/network/shared/api_error.dart';
import 'package:gallery_unsplash/network/shared/base_response.dart';
import 'package:gallery_unsplash/res/consts.dart';

class InitializeService {
  // region [Initialize]
  static const String TAG = '[InitializeService]';

  InitializeService._privateConstructor();

  static final InitializeService _instance = InitializeService._privateConstructor();

  static InitializeService get instance => _instance;
  // endregion

  Future<BaseResponse<User>> initialize() async {
    try {
      await Future.delayed(initializationDuration);

      /// Getting user from storage or firebase

      return BaseResponse<User>(
        response: User(
          id: 'ID',
          userName: 'User Name',
          first_name: 'First Name',
          second_name: 'Second Name',
        ),
      );
    } catch (e) {
      logger.e(e.toString());
      return BaseResponse(
        error: APIError.getParsingError(e.toString()),
      );
    }
  }
}
