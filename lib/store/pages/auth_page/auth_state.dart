import 'dart:collection';

import 'package:gallery_unsplash/models/models/user.dart';
import 'package:gallery_unsplash/store/shared/models/reducer.dart';
import 'package:flutter/cupertino.dart';

class AuthState {
  static const TAG = '[AuthState]';

  final User user;

  AuthState({
    @required this.user,
  });

  factory AuthState.initial() {
    return AuthState(
      user: null,
    );
  }

  AuthState copyWith({
    User user,
  }) {
    return AuthState(
      user: user ?? this.user,
    );
  }

  AuthState reducer(
    dynamic action,
  ) {
    return Reducer<AuthState>(
      actions: HashMap.from({}),
    ).updateState(action, this);
  }
}
