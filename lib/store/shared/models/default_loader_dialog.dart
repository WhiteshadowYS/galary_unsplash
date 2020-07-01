import 'package:gallery_unsplash/store/shared/loader/loader_state.dart';
import 'package:gallery_unsplash/store/shared/models/loader.dart';
import 'package:gallery_unsplash/ui/shared/lodaers/default_loader_widget.dart';
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