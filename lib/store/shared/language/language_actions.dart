import 'package:gallery_unsplash/store/shared/base_action.dart';
import 'package:flutter/cupertino.dart';

class ChangeLanguageAction extends BaseAction {
  final String locale;

  ChangeLanguageAction({@required this.locale}) : super(type: 'ChangeLanguageAction');
}
