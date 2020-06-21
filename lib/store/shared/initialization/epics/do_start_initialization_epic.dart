import 'package:digital_home/repository/initialization_repository.dart';
import 'package:digital_home/store/app/app_state.dart';
import 'package:digital_home/store/shared/initialization/initialize_actions.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/rxdart.dart';

Stream<dynamic> doStartInitializationEpic(Stream<dynamic> actions, EpicStore<AppState> store) {
  return Observable(actions).whereType<DoStartInitialization>().asyncMap(
    (action) {
      return InitializationRepository.instance.initialization().then((_) => InitializationSuccess());
    },
  );
}
