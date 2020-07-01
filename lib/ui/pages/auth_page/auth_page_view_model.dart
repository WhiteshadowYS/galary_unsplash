import 'package:gallery_unsplash/models/dto/auth_request_dto.dart';
import 'package:gallery_unsplash/models/models/user.dart';
import 'package:gallery_unsplash/store/app/app_state.dart';
import 'package:gallery_unsplash/store/pages/auth_page/auth_selectors.dart';
import 'package:flutter/cupertino.dart';
import 'package:redux/redux.dart';

class AuthPageViewModel {
  final User user;
  final void Function(AuthRequestDTO) login;

  AuthPageViewModel({
    @required this.user,
    @required this.login,
  });

  static AuthPageViewModel fromStore(Store<AppState> store) {
    return AuthPageViewModel(
      user: store.state.authState.user,
      login: AuthSelectors.getLoginFunction(store),
    );
  }
}
