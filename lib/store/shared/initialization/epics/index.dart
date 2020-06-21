
import 'package:digital_home/store/app/app_state.dart';
import 'package:digital_home/store/shared/initialization/epics/do_start_initialization_epic.dart';
import 'package:digital_home/store/shared/initialization/epics/start_initialization_epic.dart';
import 'package:redux_epics/redux_epics.dart';

final initializationEpic = combineEpics<AppState>([
  startInitializationEpic,
  doStartInitializationEpic,
]);
