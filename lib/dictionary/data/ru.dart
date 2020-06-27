import 'package:digital_home/dictionary/language.dart';
import 'package:digital_home/dictionary/splitted_language/auth.dart';
import 'package:digital_home/dictionary/splitted_language/general_language.dart';

final Language ru = Language(
  auth: Auth(
    emailHint: 'E-mail',
    passHint: 'Пароль',
    loginButtonText: 'Войти',
    signUpText: 'Нет аккаунта? Зарегестрируйтесь!',
    welcomeText: 'Добро пожаловать!',
  ),
  generalLanguage: GeneralLanguage(
    appTitle: 'Digital Home',
  ),
);