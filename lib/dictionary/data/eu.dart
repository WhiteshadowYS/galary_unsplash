import 'package:gallery_unsplash/dictionary/language.dart';
import 'package:gallery_unsplash/dictionary/splitted_language/auth.dart';
import 'package:gallery_unsplash/dictionary/splitted_language/general_language.dart';

final Language en = Language(
  auth: Auth(
    emailHint: 'E-mail',
    passHint: 'Password',
    loginButtonText: 'Login',
    signUpText: 'Dont have an account? Sign Up',
    welcomeText: 'Welcome back,',
  ),
  generalLanguage: GeneralLanguage(
    appTitle: 'Digital Home',
  ),
);