import 'package:gallery_unsplash/store/shared/models/default_loader_dialog.dart';
import 'package:flutter/material.dart';

class DefaultLoaderDialogWidget extends StatelessWidget {
  final DefaultLoaderDialog dialogData;

  DefaultLoaderDialogWidget(this.dialogData);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      child: CircularProgressIndicator(),
    );
  }
}
