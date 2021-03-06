import 'package:gallery_unsplash/store/shared/loader/loader_state.dart';
import 'package:flutter/material.dart';
import 'package:gallery_unsplash/store/shared/models/dialog.dart' as dialog;

class LoaderDialog extends dialog.Dialog {
  final bool state;
  final String title;
  final LoaderKey loaderKey;

  LoaderDialog({
    @required this.state,
    @required this.loaderKey,
    @required this.title,
  });

  @override
  void show() {}
}
