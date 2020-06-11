import 'package:digital_home/store/app/app_state.dart';

AppState appReducer(AppState state, dynamic action) {
  const String TAG = '[appReducer]';

  print('$TAG => <appReducer> => action: ${action.runtimeType}');

  return AppState();
}