import 'package:flutter/material.dart';

abstract class IRoomElement {
  final String id;
  final String name;
  final IconData icon;
  var state;

  IRoomElement({
    this.icon,
    this.state,
    this.name,
    this.id,
  });
}
