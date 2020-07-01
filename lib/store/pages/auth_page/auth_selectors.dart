import 'package:gallery_unsplash/models/dto/auth_request_dto.dart';
import 'package:gallery_unsplash/store/app/app_state.dart';
import 'package:gallery_unsplash/store/pages/auth_page/auth_action.dart';
import 'package:redux/redux.dart';

class AuthSelectors {
  static void Function(AuthRequestDTO) getLoginFunction(Store<AppState> store) {
    return (AuthRequestDTO dto) {
      store.dispatch(LoginAction(dto));
    };
  }
}
