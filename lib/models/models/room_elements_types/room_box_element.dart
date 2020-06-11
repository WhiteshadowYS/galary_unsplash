import 'package:digital_home/models/models/room_element.dart';
import 'package:flutter/material.dart';

class RoomBoxElement extends RoomElement {
  RoomBoxElement({
    @required String id,
    @required String name,
    @required bool state,
  }) : super(id: id, name: name, state: state);
}