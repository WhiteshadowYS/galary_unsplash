import 'package:gallery_unsplash/store/app/app_state.dart';
import 'package:gallery_unsplash/store/shared/loader/loader_state.dart';
import 'package:redux/redux.dart';

class LoaderSelectors {
  static bool getValueForLoadingKey(Store<AppState> store, LoaderKey loaderKey) {
    int index = store.state.loaderState.loaders.indexWhere((loader) => loader.loaderKey == loaderKey ?? loader.state);

    return index != -1;
  }
}
