import 'package:gallery_unsplash/res/colors.dart';
import 'package:gallery_unsplash/res/font_styles.dart';
import 'package:flutter/material.dart';

class MainTextField extends StatefulWidget {
  final void Function(String) onChange;
  final String Function(String) validation;

  final EdgeInsets margin;
  final EdgeInsets padding;

  final double width;
  final double height;

  final TextEditingController textController;
  final TextStyle textStyle;

  final String hintText;
  final TextStyle hintTextStyle;

  final TextInputType inputType;

  MainTextField({
    @required this.textController,
    this.textStyle,
    this.height,
    this.width,
    this.padding = const EdgeInsets.symmetric(
      horizontal: 8,
    ),
    this.margin = const EdgeInsets.all(0.0),
    @required this.onChange,
    this.validation,
    this.hintText,
    this.hintTextStyle,
    this.inputType = TextInputType.text,
  })  : assert(textController != null, throw ('Text must be initialize')),
        assert(onChange != null, 'onChange must be initilize');

  @override
  _MainTextFieldState createState() => _MainTextFieldState();
}

class _MainTextFieldState extends State<MainTextField> {
  TextStyle textStyle;
  TextStyle hintTextStyle;

  @override
  void initState() {
    widget.textStyle == null
        ? textStyle = Fonts.fieldTextStyle()
        : textStyle = widget.textStyle;

    widget.hintTextStyle == null
        ? hintTextStyle = Fonts.hintTextStyle()
        : hintTextStyle = widget.hintTextStyle;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          alignment: Alignment.center,
          margin: widget.margin,
          padding: widget.padding,
          height: widget.height ?? 50.0,
          width: widget.width ?? double.infinity,
          decoration: BoxDecoration(
            color: PRIMARY_WHITE,
            borderRadius: BorderRadius.circular(18.0),
          ),
        ),
        TextFormField(
          keyboardType: widget.inputType,
          autovalidate: true,
          validator: (String arg) {
            if (widget.validation != null) {
              return widget.validation(arg);
            }

            return null;
          },
          maxLines: 1,
          style: textStyle,
          controller: widget.textController,
          decoration: InputDecoration(
            hintText: widget.hintText,
            hintStyle: hintTextStyle,
            contentPadding: widget.padding,
            border: InputBorder.none,
          ),
        ),
      ],
    );
  }
}
