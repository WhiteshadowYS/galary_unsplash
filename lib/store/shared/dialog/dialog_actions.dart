import 'package:digital_home/store/shared/base_action.dart';
import 'package:digital_home/store/shared/models/dialog.dart';
import 'package:flutter/cupertino.dart';

class ShowDialog extends BaseAction {
  final Dialog dialog;

  ShowDialog({@required this.dialog}) : super(type: 'ShowDialog');
}