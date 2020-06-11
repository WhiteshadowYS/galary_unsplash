import 'package:digital_home/models/interfaces/i_user.dart';
import 'package:flutter/material.dart';

class User implements IUser {
  final String id;
  final String name;
  final String region;

  User({
    @required this.id,
    @required this.name,
    @required this.region,
  });
}
