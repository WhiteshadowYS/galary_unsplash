import 'package:gallery_unsplash/res/colors.dart';
import 'package:flutter/material.dart';

class MainLayout extends StatelessWidget {
  final bool resizeToAvoidBottomPadding;
  final PreferredSizeWidget appBar;
  final Color bgColor;
  final Widget child;
  final bool Function() willPopScope;

  MainLayout({
    @required this.child,
    this.appBar,
    this.bgColor = BG_COLOR,
    this.resizeToAvoidBottomPadding = false,
    this.willPopScope,
  }) : assert(child != null, throw ('Child must be initialize'));

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (willPopScope != null) {
          return willPopScope();
        }

        return false;
      },
      child: Scaffold(
        resizeToAvoidBottomPadding: resizeToAvoidBottomPadding,
        appBar: appBar,
        backgroundColor: bgColor,
        body: Container(
          width: double.infinity,
          height: double.infinity,
          padding: const EdgeInsets.all(16.0),
          child: child,
        ),
      ),
    );
  }
}
