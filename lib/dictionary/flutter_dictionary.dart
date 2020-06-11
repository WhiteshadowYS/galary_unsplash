import 'package:digital_home/dictionary/language.dart';
import 'package:flutter/foundation.dart' show SynchronousFuture;
import 'package:flutter/material.dart';

class FlutterDictionary {
  final Locale locale;
  Language language;

  static FlutterDictionary instance;

  FlutterDictionary(this.locale) {
    // set up of default language
    language = Language();
  }

  static FlutterDictionary of(BuildContext context) {
    return Localizations.of<FlutterDictionary>(context, FlutterDictionary);
  }

  static void init(BuildContext context) {
    instance = FlutterDictionary.of(context);
  }

  //region [RTL LANGUAGES]
  static const List<String> _rtlLanguages = <String>[
    'ar', // Arabic
    'fa', // Farsi
    'he', // Hebrew
    'ps', // Pashto
    'ur', // Urdu
  ];

  bool isRTL(BuildContext context) {
    return _rtlLanguages.contains(
      Localizations.localeOf(context).languageCode,
    );
  }
//endregion
}

class FlutterDictionaryDelegate extends LocalizationsDelegate<FlutterDictionary> {
  const FlutterDictionaryDelegate();

  ///locales added here are supported by the dictionary, but not yet by the app
  @override
  bool isSupported(Locale locale) {
    return ['he'].contains(locale.languageCode);
  }

  @override
  Future<FlutterDictionary> load(Locale locale) {
    // Returning a SynchronousFuture here because an async "load" operation
    // isn't needed to produce an instance of DemoLocalizations.
    return SynchronousFuture<FlutterDictionary>(FlutterDictionary(locale));
  }

  @override
  bool shouldReload(LocalizationsDelegate<FlutterDictionary> old) {
    return false;
  }
}
