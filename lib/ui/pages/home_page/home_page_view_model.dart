import 'package:digital_home/store/app/app_state.dart';
import 'package:redux/redux.dart';

class HomePageViewModel {
  HomePageViewModel();

  static HomePageViewModel fromStore(Store<AppState> store) {
    return HomePageViewModel();
  }
}
