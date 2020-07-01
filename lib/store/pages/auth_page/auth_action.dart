import 'package:gallery_unsplash/models/dto/auth_request_dto.dart';
import 'package:gallery_unsplash/store/shared/base_action.dart';

class LoginAction extends BaseAction {
  AuthRequestDTO dto;

  LoginAction(this.dto) : super(type: 'LoginAction');
}
