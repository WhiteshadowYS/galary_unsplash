import 'package:flutter/material.dart';

class AuthRequestDTO {
  final String email;
  final String password;

  AuthRequestDTO({
    @required this.email,
    @required this.password,
  });
}