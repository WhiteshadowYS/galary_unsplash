import 'dart:collection';

import 'package:gallery_unsplash/res/consts.dart';
import 'package:gallery_unsplash/store/shared/language/language_actions.dart';
import 'package:gallery_unsplash/store/shared/models/reducer.dart';
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

  LanguageState reducer(dynamic action) {
    return Reducer<LanguageState>(
      actions: HashMap.from({
        ChangeLanguageAction: (dynamic action) => changeLanguageFunction(action as ChangeLanguageAction),
      }),
    ).updateState(action, this);
  }

  LanguageState changeLanguageFunction(ChangeLanguageAction action) {
    return this.copyWith(
      locale: action.locale,
    );
  }
}
