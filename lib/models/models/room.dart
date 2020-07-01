import 'package:gallery_unsplash/models/interfaces/i_room.dart';
import 'package:gallery_unsplash/models/interfaces/i_room_element.dart';
import 'package:flutter/material.dart';

class Room implements IRoom {
  final String id;
  final String name;
  final List<IRoomElement> elements;

  Room({
    @required this.id,
    @required this.name,
    this.elements,
  });
}
