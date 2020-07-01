import 'package:gallery_unsplash/models/interfaces/i_room_element.dart';
import 'package:flutter/material.dart';

class RoomElement implements IRoomElement {
  final String id;
  final String name;
  final IconData icon;
  var state;

  RoomElement({
    @required this.id,
    @required this.name,
    @required this.icon,
    @required this.state,
  });
}
