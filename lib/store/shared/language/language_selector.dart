import 'package:gallery_unsplash/res/typedef.dart';
import 'package:gallery_unsplash/store/app/app_state.dart';
import 'package:gallery_unsplash/store/shared/language/language_actions.dart';
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
