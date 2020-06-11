import 'package:digital_home/models/models/user.dart';
import 'package:flutter/cupertino.dart';

class AuthState {
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
}
