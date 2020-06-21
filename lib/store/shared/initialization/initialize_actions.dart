import 'package:digital_home/store/shared/base_action.dart';

class StartInitialization extends BaseAction {
  StartInitialization() : super(type: 'StartInitialization');
}

class DoStartInitialization extends BaseAction {
  DoStartInitialization() : super(type: 'DoStartInitialization');
}

class InitializationSuccess extends BaseAction {
  InitializationSuccess() : super(type: 'InitializationSuccess');
}

class InitializationFailed extends APIErrorAction {
  InitializationFailed({error}) : super(type: 'InitializationFailed', error: error);
}
