import 'package:flutter/cupertino.dart';
import 'package:gallery_unsplash/store/shared/initialization/initialize_epic.dart';
import 'package:gallery_unsplash/store/shared/language/language_state.dart';
import 'package:gallery_unsplash/store/shared/loader/loader_state.dart';
import 'package:redux_epics/redux_epics.dart';

class AppState {
  final LanguageState languageState;
  final LoaderState loaderState;

  AppState({
    @required this.languageState,
    @required this.loaderState,
  });

  factory AppState.initial() {
    return AppState(
      languageState: LanguageState.initial(),
      loaderState: LoaderState.initial(),
    );
  }

  static AppState getAppReducer(AppState state, dynamic action) {
    const String TAG = '[appReducer]';

    print('$TAG => <appReducer> => action: ${action.runtimeType}');

    return AppState(
      loaderState: state.loaderState.reducer(action),
      languageState: state.languageState.reducer(action),
    );
  }

  static final getAppEpic = combineEpics<AppState>([
    InitializeEpics.indexEpic,
  ]);
}
