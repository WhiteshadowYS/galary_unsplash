import 'package:digital_home/store/shared/loader/loader_state.dart';
import 'package:digital_home/store/shared/models/loader.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux_navigation/flutter_redux_navigation.dart';

class DefaultLoaderDialog implements LoaderDialog {
  @override
  final bool state;

  @override
  final LoaderKey loaderKey;

  @override
  final String title;

  DefaultLoaderDialog({
    @required this.state,
    @required this.loaderKey,
    this.title,
  });

  @override
  void show() {
    showDialog(
      context: NavigatorHolder.navigatorKey?.currentState?.overlay?.context,
      builder: (BuildContext context) {
        return DefaultLoaderDialogWidget(this);
      },
    );
  }
}

class DefaultLoaderDialogWidget extends StatelessWidget {
  final DefaultLoaderDialog dialogData;

  DefaultLoaderDialogWidget(this.dialogData);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      color: Colors.red,
    );
  }
}
