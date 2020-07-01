import 'package:gallery_unsplash/models/models/room_element.dart';
import 'package:flutter/material.dart';

class RoomBoxElement extends RoomElement {
  RoomBoxElement({
    @required String id,
    @required String name,
    @required IconData icon,
    @required bool state,
  }) : super(id: id, name: name, state: state, icon: icon);
}