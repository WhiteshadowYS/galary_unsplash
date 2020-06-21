import 'package:digital_home/res/colors.dart';
import 'package:flutter/material.dart';

class MainLayout extends StatelessWidget {
  final bool resizeToAvoidBottomPadding;
  final PreferredSizeWidget appBar;
  final Widget child;

  MainLayout({
    @required this.child,
    this.appBar,
    this.resizeToAvoidBottomPadding = false,
  }) : assert(child != null, throw ('Child must be initialize'));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: resizeToAvoidBottomPadding,
      appBar: appBar,
      backgroundColor: BG_COLOR,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: child,
      ),
    );
  }
}
