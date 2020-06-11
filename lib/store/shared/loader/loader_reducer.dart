import 'dart:collection';

import 'package:digital_home/store/shared/loader/loader_actions.dart';
import 'package:digital_home/store/shared/loader/loader_keys.dart';
import 'package:digital_home/store/shared/loader/loader_state.dart';

LoaderState loaderReducer(LoaderState state, dynamic action) {
  switch (action.runtimeType) {
    case ChangeLoaderState:
      ChangeLoaderState changeLoaderState = action as ChangeLoaderState;

      return state.copyWith(
        isLoaderExist: changeLoaderState.newState,
        opacity: changeLoaderState.opacity,
      );

    case ChangeLoading:
      ChangeLoading changeLoading = action as ChangeLoading;

      return state.copyWith(
        loadingKeys: HashMap<LoadingKeys, bool>.from(state.loadingKeys)..addAll(HashMap.from({changeLoading.loadingKey: changeLoading.nextValue})),
      );

    default:
      return state;
  }
}
