import 'package:digital_home/network/shared/api_error.dart';
import 'package:flutter/material.dart';

class BaseAction {
  final String type;

  BaseAction({this.type});
}

class APIErrorAction extends BaseAction {
  final APIError error;

  APIErrorAction({@required this.error, @required type}) : super(type: type);
}
