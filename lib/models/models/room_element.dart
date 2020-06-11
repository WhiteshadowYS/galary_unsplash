import 'package:digital_home/models/interfaces/i_room_element.dart';
import 'package:flutter/material.dart';

class RoomElement implements IRoomElement {
  final String id;
  final String name;
  var state;

  RoomElement({
    @required this.id,
    @required this.name,
    @required this.state,
  });
}
