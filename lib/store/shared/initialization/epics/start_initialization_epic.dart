import 'dart:async';

import 'package:digital_home/res/consts.dart';
import 'package:digital_home/store/app/app_state.dart';
import 'package:digital_home/store/shared/initialization/initialize_actions.dart';
import 'package:flutter_redux_navigation/flutter_redux_navigation.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/rxdart.dart';

Stream<dynamic> startInitializationEpic(Stream<dynamic> actions, EpicStore<AppState> store) {
  return Observable(actions).whereType<StartInitialization>().switchMap(
        (action) {
      return Observable(
        ConcatStream(
          <Stream>[
            Stream.fromIterable([
              DoStartInitialization(),
            ]),
            Observable.zip(<Stream>[
              Observable(actions).where(
                (event) => (event.runtimeType == InitializationSuccess || event.runtimeType == InitializationFailed),
              ),
              Observable.just(1).take(1),
            ], (values) {
              return Observable(
                ConcatStream([
                  Stream.fromIterable([
                    NavigateToAction.pushNamedAndRemoveUntil(ROUTE_AUTH_PAGE, (route) => true),
                  ]),
                ]),
              );
            }).switchMap((action) => action),
          ],
        ),
      );
    },
  );
}
