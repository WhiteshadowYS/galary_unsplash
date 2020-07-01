import 'package:gallery_unsplash/ui/shared/dialogs/error_dialog_widget.dart';
import 'package:flutter/material.dart';
import 'package:gallery_unsplash/store/shared/models/dialog.dart' as dialog;
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
