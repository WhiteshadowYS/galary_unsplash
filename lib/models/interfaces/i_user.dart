import 'package:flutter/cupertino.dart';

abstract class IUser {
  final String id;
  final String userName;
  final String first_name;
  final String second_name;

  IUser({
    @required this.id,
    @required this.userName,
    @required this.first_name,
    @required this.second_name,
  });
}