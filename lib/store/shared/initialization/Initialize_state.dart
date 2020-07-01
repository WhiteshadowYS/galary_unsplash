import 'dart:collection';

import 'package:gallery_unsplash/store/shared/models/reducer.dart';

class InitializeState {
  static const TAG = '[InitializeState]';

  InitializeState();

  factory InitializeState.initial() {
    return InitializeState();
  }

  InitializeState copyWith() {
    return InitializeState();
  }

  InitializeState reducer(dynamic action) {
    return Reducer<InitializeState>(
      actions: HashMap.from({}),
    ).updateState(action, this);
  }
}
