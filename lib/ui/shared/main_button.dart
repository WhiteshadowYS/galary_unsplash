import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  static const String TAG = '[MainButton]';

  final double borderRadius;
  final double height;
  final double width;

  final EdgeInsets margin;
  final EdgeInsets padding;

  final Widget child;

  final List<BoxShadow> shadows;
  final Color color;
  final Color splashColor;

  final void Function() onPressed;

  MainButton({
    @required this.child,
    @required this.onPressed,
    this.shadows,
    this.margin = const EdgeInsets.all(16.0),
    this.padding = const EdgeInsets.all(0.0),
    this.width = double.infinity,
    this.height = 36.0,
    this.color = Colors.red,
    this.splashColor = Colors.white,
    this.borderRadius = 16.0,
  })  : assert(child != null, throw ('$TAG => throw: Child must be initialize')),
        assert(onPressed != null, throw ('$TAG => throw: onPressed must be initialize'));

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(borderRadius),
        boxShadow: shadows,
      ),
      margin: margin,
      width: width,
      height: height,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(borderRadius),
          splashColor: splashColor,
          highlightColor: splashColor.withOpacity(0.5),
          onTap: () {
            if (onPressed != null) {
              onPressed();
            }
          },
          child: Container(
            padding: padding,
            child: child,
          ),
        ),
      ),
    );
  }
}
