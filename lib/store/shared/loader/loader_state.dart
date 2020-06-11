import 'dart:collection';

import 'package:digital_home/store/shared/loader/loader_keys.dart';

class LoaderState {
  HashMap<LoadingKeys, bool> loadingKeys;

  bool isLoaderExist;
  double opacity;

  LoaderState({
    this.loadingKeys,
    this.isLoaderExist,
    this.opacity,
  });

  factory LoaderState.initial() {
    return LoaderState(
      loadingKeys: HashMap(),
      isLoaderExist: false,
      opacity: 1.0,
    );
  }

  LoaderState copyWith({
    HashMap<LoadingKeys, bool> loadingKeys,
    bool isLoaderExist,
    double opacity,
  }) {
    return LoaderState(
      loadingKeys: loadingKeys ?? this.loadingKeys,
      isLoaderExist: isLoaderExist ?? this.isLoaderExist,
      opacity: opacity ?? this.opacity,
    );
  }
}
