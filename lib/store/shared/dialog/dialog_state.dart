import 'dart:collection';

import 'package:digital_home/store/shared/dialog/dialog_actions.dart';
import 'package:digital_home/store/shared/models/reducer.dart';

class DialogModuleState {
  DialogModuleState();

  factory DialogModuleState.initial() {
    return DialogModuleState();
  }

  DialogModuleState copyWith() {
    return DialogModuleState();
  }

  DialogModuleState reducer(DialogModuleState state, dynamic action) {
    return Reducer<DialogModuleState>(
      actions: HashMap.from({
        ShowDialog: (dynamic action) => _showDialog(action as ShowDialog),
      }),
    ).updateState(action, state);
  }

  DialogModuleState _showDialog(ShowDialog action) {
    action.dialog.show();
    return this;
  }
}
