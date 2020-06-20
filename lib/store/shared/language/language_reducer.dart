import 'package:digital_home/store/shared/language/language_actions.dart';
import 'package:digital_home/store/shared/language/language_state.dart';

LanguageState languageReducer(LanguageState state, dynamic action) {
  switch (action.runtimeType) {
    case ChangeLanguageAction:
      ChangeLanguageAction changeLanguageAction = action as ChangeLanguageAction;

      return state.copyWith(
        locale: changeLanguageAction.locale,
      );

    default:
      return state;
  }
}
