import 'package:digital_home/models/dto/auth_request_dto.dart';
import 'package:digital_home/store/shared/base_action.dart';

class LoginAction extends BaseAction {
  AuthRequestDTO dto;

  LoginAction(this.dto) : super(type: 'LoginAction');
}
