import 'package:digital_home/app/application.dart';
import 'package:digital_home/store/app/app_epic.dart';
import 'package:digital_home/store/app/app_reducer.dart';
import 'package:digital_home/store/app/app_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_redux_navigation/flutter_redux_navigation.dart';
import 'package:redux/redux.dart';
import 'package:redux_epics/redux_epics.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Store store = Store<AppState>(
    appReducer,
    initialState: AppState.initial(),
    middleware: [
      EpicMiddleware(appEpic),
      NavigationMiddleware<AppState>(),
    ],
  );

  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  runApp(Application(store: store));
}
