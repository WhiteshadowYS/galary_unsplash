import 'package:gallery_unsplash/repository/auth_repository.dart';
import 'package:gallery_unsplash/res/consts.dart';
import 'package:gallery_unsplash/store/app/app_state.dart';
import 'package:gallery_unsplash/store/pages/auth_page/auth_action.dart';
import 'package:flutter_redux_navigation/flutter_redux_navigation.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/rxdart.dart';

class AuthEpics {
  static Stream<dynamic> loginEpic(Stream<dynamic> actions, EpicStore<AppState> store) {
    return actions.whereType<LoginAction>().switchMap((action) {
      return Stream.fromFuture(
        AuthRepository.instance.signIn(action.dto).then((value) {
          if (value.error != null) {
            return null;
          }
          
          return NavigateToAction.pushNamedAndRemoveUntil(ROUTE_HOME_PAGE, (route) => false);
        }),
      );
    });
  }
}