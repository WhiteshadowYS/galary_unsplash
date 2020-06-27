import 'package:flutter/material.dart';
import 'package:digital_home/store/shared/models/dialog.dart' as dialog;
import 'package:flutter_redux_navigation/flutter_redux_navigation.dart';

class ErrorDialog extends dialog.Dialog {
  final String title;
  final String message;
  final Duration duration;

  ErrorDialog({
    @required this.title,
    @required this.message,
    @required this.duration,
  });

  void show() {
    showDialog(
      context: NavigatorHolder.navigatorKey?.currentState?.overlay?.context,
      builder: (BuildContext context) {
        return ErrorDialogWidget(this);
      }
    );
  }
}

class ErrorDialogWidget extends StatefulWidget {
  final ErrorDialog dialogData;

  ErrorDialogWidget(this.dialogData);

  @override
  _ErrorDialogWidgetState createState() => _ErrorDialogWidgetState();
}

class _ErrorDialogWidgetState extends State<ErrorDialogWidget> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
