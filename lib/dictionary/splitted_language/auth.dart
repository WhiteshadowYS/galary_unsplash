import 'package:flutter/material.dart';

class Auth {
  final String emailHint;
  final String passHint;
  final String loginButtonText;
  final String signUpText;
  final String welcomeText;

  Auth({
    @required this.emailHint,
    @required this.passHint,
    @required this.loginButtonText,
    @required this.signUpText,
    @required this.welcomeText,
  });
}