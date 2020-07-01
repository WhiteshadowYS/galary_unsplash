import 'dart:collection';

import 'package:gallery_unsplash/store/shared/models/reducer.dart';

class HomePageState {
  HomePageState();

  factory HomePageState.initial() {
    return HomePageState();
  }

  HomePageState copyWith() {
    return HomePageState();
  }

  HomePageState reducer(dynamic action) {
    return Reducer<HomePageState>(
      actions: HashMap.from({}),
    ).updateState(action, this);
  }
}
