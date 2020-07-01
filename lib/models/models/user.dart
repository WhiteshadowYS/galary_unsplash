import 'package:gallery_unsplash/models/interfaces/i_user.dart';
import 'package:flutter/material.dart';

class User implements IUser {
  final String id;
  final String name;
  final String email;

  User({
    @required this.id,
    @required this.name,
    @required this.email,
  });
}
