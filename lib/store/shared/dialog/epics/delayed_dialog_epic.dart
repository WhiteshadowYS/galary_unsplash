//import 'package:redux_epics/redux_epics.dart';
//import 'package:rxdart/rxdart.dart';
//
//
//Stream<dynamic> displayDelayedDialog(Stream<dynamic> actions, EpicStore<AppState> store) {
//  const String TAG = '[displayDelayedDialog]';
//
//  return Observable(actions).whereType<DisplayDelayedDialog>().switchMap(
//    (action) {
//      return Observable(
//        ConcatStream(
//          <Stream>[
//            Stream.fromIterable([
//              DisplayDialog(
//                dialogType: action.dialogType,
//                dialogDTO: action.dialogDTO,
//              ),
//              DoDisplayDelayedDialog(duration: action.duration),
//            ]),
//            Observable.zip(<Stream>[
//              Observable(actions).where(
//                (event) => (event.runtimeType == DoDelayedDialogEnd),
//              ),
//              Observable.just(1).take(1),
//            ], (values) {
//              print('$TAG => [type] => ${values.first.runtimeType}');
//
//              if (values.first.runtimeType == DoDelayedDialogEnd) {
//                return Observable(
//                  ConcatStream([
//                    Stream.fromIterable([
//                      HideDialog(),
//                    ]),
//                  ]),
//                );
//              }
//
//              return Observable(
//                ConcatStream([
//                  Stream.fromIterable([
//                    HideDialog(),
//                  ]),
//                ]),
//              );
//            }).switchMap((action) => action),
//          ],
//        ),
//      );
//    },
//  );
//}
