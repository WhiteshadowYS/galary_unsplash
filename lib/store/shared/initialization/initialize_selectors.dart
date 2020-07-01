import 'package:gallery_unsplash/store/app/app_state.dart';
import 'package:gallery_unsplash/store/shared/initialization/initialize_actions.dart';
import 'package:redux/redux.dart';

class InitializeSelectors {
  static void startInitialization(Store<AppState> store) {
    return () {
      store.dispatch(StartInitialization());
    }();
  }
}