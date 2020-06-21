import 'package:digital_home/store/app/app_state.dart';
import 'package:digital_home/store/shared/initialization/initialize_actions.dart';
import 'package:redux/redux.dart';

class InitializeSelectors {
  static void startInitialization(Store<AppState> store) {
    return () {
      store.dispatch(StartInitialization());
    }();
  }
}