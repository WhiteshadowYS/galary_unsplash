import 'package:gallery_unsplash/res/colors.dart';
import 'package:gallery_unsplash/ui/layouts/main_layout/main_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: BG_COLOR,
      child: Column(
        children: <Widget>[
          Spacer(),
          Container(
            height: 200,
            width: double.infinity,
            child: Column(),
          ),
          Spacer(),
          Container(
            height: 200,
            width: double.infinity,
            child: Column(),
          ),
          Spacer(),
          Container(
            height: 200,
            width: double.infinity,
            child: Column(),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
