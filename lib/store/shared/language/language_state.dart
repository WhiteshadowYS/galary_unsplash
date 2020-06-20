import 'package:digital_home/res/consts.dart';
import 'package:flutter/cupertino.dart';

class LanguageState {
  final String locale;

  LanguageState({
    @required this.locale,
  });

  factory LanguageState.initial() {
    return LanguageState(
      locale: BASE_LOCALE,
    );
  }

  LanguageState copyWith({
    @required String locale,
  }) {
    return LanguageState(
      locale: locale ?? this.locale,
    );
  }
}