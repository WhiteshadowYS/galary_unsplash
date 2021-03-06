import 'package:gallery_unsplash/store/shared/base_action.dart';
import 'package:gallery_unsplash/store/shared/loader/loader_state.dart';
import 'package:gallery_unsplash/store/shared/models/loader.dart';
import 'package:flutter/cupertino.dart';

// region [LOADING ACTIONS]
class StartLoading extends BaseAction {
  final LoaderDialog loader;

  StartLoading({
    @required this.loader,
  }) : super(type: 'ChangeLoading');
}

class StopLoading extends BaseAction {
  final LoaderKey loaderKey;

  StopLoading({
    @required this.loaderKey,
  }) : super(type: 'StopLoading');
}
// endregion
