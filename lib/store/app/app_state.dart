import 'package:digital_home/store/shared/language/language_state.dart';
import 'package:flutter/cupertino.dart';

class AppState {
  final LanguageState languageState;

  AppState({
    @required this.languageState,
  });

  factory AppState.initial() {
    return AppState(
      languageState: LanguageState.initial(),
    );
  }
}