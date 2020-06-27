import 'package:digital_home/dictionary/splitted_language/auth.dart';
import 'package:digital_home/dictionary/splitted_language/general_language.dart';
import 'package:flutter/cupertino.dart';

class Language {
  final Auth auth;
  final GeneralLanguage generalLanguage;

  Language({
    @required this.auth,
    @required this.generalLanguage,
  });
}