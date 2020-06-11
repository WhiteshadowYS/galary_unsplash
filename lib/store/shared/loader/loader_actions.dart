
import 'package:digital_home/store/shared/base_action.dart';
import 'package:digital_home/store/shared/loader/loader_keys.dart';

class ChangeLoaderState extends BaseAction {
  bool newState;
  double opacity;

  ChangeLoaderState({
    this.newState,
    this.opacity,
  }) : super(type: 'ChangeLoaderState');
}

// region [LOADING ACTIONS]
class ChangeLoading extends BaseAction {
  final LoadingKeys loadingKey;
  final bool nextValue;

  ChangeLoading({this.loadingKey, this.nextValue}) : super(type: 'ChangeLoading');
}
// endregion
