import 'package:digital_home/store/app/app_state.dart';
import 'package:digital_home/store/shared/loader/loader_keys.dart';
import 'package:redux/redux.dart';

class LoaderSelectors {
  static bool getValueForLoadingKey(Store<AppState> store, LoadingKeys loadingKey) {
    return false;
//    return store.state.loaderState.loadingKeys[loadingKey] ?? false;
  }
}