import 'dart:collection';

import 'package:digital_home/store/shared/models/reducer.dart';

class MenuPageState {
  MenuPageState();

  factory MenuPageState.initial() {
    return MenuPageState();
  }

  MenuPageState copyWith() {
    return MenuPageState();
  }

  MenuPageState reducer(dynamic action) {
    return Reducer<MenuPageState>(
      actions: HashMap.from({}),
    ).updateState(action, this);
  }
}
