//import 'package:profit_app/store/dialog/dialog_actions.dart';
//import 'package:redux_epics/redux_epics.dart';
//import 'package:rxdart/rxdart.dart';
//
//import '../../app/app_state.dart';
//
//Stream<dynamic> doDisplayDelayedDialog(Stream<dynamic> actions, EpicStore<AppState> store) {
//  return Observable(actions).whereType<DoDisplayDelayedDialog>().asyncMap(
//    (action) {
//      return Future.delayed(action.duration, () {
//        return DoDelayedDialogEnd();
//      });
//    },
//  );
//}
