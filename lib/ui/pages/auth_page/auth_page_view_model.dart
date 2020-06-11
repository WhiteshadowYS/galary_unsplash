import 'package:digital_home/store/app/app_state.dart';
import 'package:redux/redux.dart';

class AuthPageViewModel {
  AuthPageViewModel();

  static AuthPageViewModel fromStore(Store<AppState> store) {
    return AuthPageViewModel();
  }
}
