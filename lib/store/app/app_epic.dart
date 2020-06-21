import 'package:digital_home/store/app/app_state.dart';
import 'package:digital_home/store/shared/initialization/epics/index.dart';
import 'package:redux_epics/redux_epics.dart';

final appEpic = combineEpics<AppState>([
  initializationEpic,
]);
