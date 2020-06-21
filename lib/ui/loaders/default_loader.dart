import 'package:flutter/material.dart';

class DefaultLoader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
        alignment: Alignment.center,
        width: double.infinity,
        child: CircularProgressIndicator(),
      ),
    );
  }
}
