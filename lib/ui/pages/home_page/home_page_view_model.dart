import 'package:digital_home/models/models/room.dart';
import 'package:digital_home/models/models/room_element.dart';
import 'package:digital_home/models/models/room_elements_types/room_box_element.dart';
import 'package:digital_home/store/app/app_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:redux/redux.dart';

class HomePageViewModel {
  final Room selectedRoom;

  HomePageViewModel({
    @required this.selectedRoom,
  });

  static HomePageViewModel fromStore(Store<AppState> store) {
    return HomePageViewModel(
      selectedRoom: Room(
        id: '0',
        name: 'Living room',
        elements: [
          RoomBoxElement(
            id: '0',
            name: 'Lock',
            icon: Icons.lock,
            state: true,
          ),
          RoomBoxElement(
            id: '1',
            name: 'Lamp',
            icon: Icons.highlight,
            state: true,
          ),
          RoomBoxElement(
            id: '2',
            name: 'Clock',
            icon: Icons.alarm,
            state: true,
          ),
          RoomBoxElement(
            id: '3',
            name: 'Curtains',
            icon: Icons.bookmark_border,
            state: true,
          ),
          RoomBoxElement(
            id: '3',
            name: 'Curtains',
            icon: Icons.bookmark_border,
            state: true,
          ),
          RoomBoxElement(
            id: '3',
            name: 'Curtains',
            icon: Icons.bookmark_border,
            state: true,
          ),
          RoomBoxElement(
            id: '3',
            name: 'Curtains',
            icon: Icons.bookmark_border,
            state: true,
          ),
          RoomBoxElement(
            id: '3',
            name: 'Curtains',
            icon: Icons.bookmark_border,
            state: true,
          ),
        ],
      ),
    );
  }
}

