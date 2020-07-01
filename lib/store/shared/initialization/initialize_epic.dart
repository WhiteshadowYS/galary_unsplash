import 'package:gallery_unsplash/models/models/user.dart';
import 'package:gallery_unsplash/network/shared/base_response.dart';
import 'package:gallery_unsplash/repository/initialization_repository.dart';
import 'package:gallery_unsplash/res/consts.dart';
import 'package:gallery_unsplash/store/app/app_state.dart';
import 'package:gallery_unsplash/store/shared/initialization/initialize_actions.dart';
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

          return NavigateToAction.pushNamedAndRemoveUntil(ROUTE_LIST_OF_PHOTO_PAGE, (route) => false);
        }),
      );
    });
  }
}
