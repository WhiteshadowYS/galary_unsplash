import 'dart:collection';

import 'package:gallery_unsplash/res/consts.dart';
import 'package:flutter/cupertino.dart';

class Reducer<T> {
  final String TAG = '[Reducer<$T>]';

  HashMap<dynamic, T Function(dynamic)> actions;

  Reducer({
    @required this.actions,
  }) {
    actions.forEach((key, value) {
      if (value == null) throw('All Functions must be initialize');
    });
  }

  T updateState(dynamic action, T state) {
    if (actions.containsKey(action.runtimeType)) {
      logger.i('$TAG => <updateState> => founded action: $action');

      return actions[action.runtimeType](action);
    }

    return state;
  }
}