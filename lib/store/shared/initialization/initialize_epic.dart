import 'package:digital_home/models/models/user.dart';
import 'package:digital_home/network/shared/base_response.dart';
import 'package:digital_home/repository/initialization_repository.dart';
import 'package:digital_home/res/consts.dart';
import 'package:digital_home/store/app/app_state.dart';
import 'package:digital_home/store/shared/initialization/initialize_actions.dart';
import 'package:flutter_redux_navigation/flutter_redux_navigation.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/rxdart.dart';

class InitializeEpics {
  static final indexEpic = combineEpics<AppState>([
    initializationEpic,
  ]);

  static Stream<dynamic> initializationEpic(Stream<dynamic> actions, EpicStore<AppState> store) {
    return actions.whereType<StartInitialization>().switchMap((action) {
      return Stream.fromFuture(
        InitializationRepository.instance.initialization().then((BaseResponse<User> result) {
          if (result.error != null) {
            return null;
          }

          return NavigateToAction.pushNamedAndRemoveUntil(ROUTE_HOME_PAGE, (route) => false);
        }),
      );
    });
  }
}
