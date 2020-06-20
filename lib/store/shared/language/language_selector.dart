import 'package:digital_home/res/typedef.dart';
import 'package:digital_home/store/app/app_state.dart';
import 'package:digital_home/store/shared/language/language_actions.dart';
import 'package:redux/redux.dart';

class LanguageSelector {
  static String getSelectedLocale(Store<AppState> store) {
    return store.state.languageState.locale;
  }

  static ChangeLanguageFunction changeLanguage(Store<AppState> store) {
    return (String locale) {
      store.dispatch(
        ChangeLanguageAction(locale: locale),
      );
    };
  }
}
