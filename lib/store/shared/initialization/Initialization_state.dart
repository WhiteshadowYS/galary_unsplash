import 'dart:collection';

import 'package:digital_home/store/shared/models/reducer.dart';

class InitializationState {
  static const TAG = '[InitializationState]';

  InitializationState();

  factory InitializationState.initial() {
    return InitializationState();
  }

  InitializationState copyWith() {
    return InitializationState();
  }

  InitializationState reducer(dynamic action) {
    return Reducer<InitializationState>(
      actions: HashMap.from({}),
    ).updateState(action, this);
  }
}
