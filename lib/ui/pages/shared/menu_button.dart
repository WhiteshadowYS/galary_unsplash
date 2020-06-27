import 'package:digital_home/res/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MenuButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(6.h),
      decoration: BoxDecoration(
        color: PRIMARY_COLOR,
        boxShadow: PRIMARY_WHITE_SHADOW,
        shape: BoxShape.circle,
      ),
      width: 34.h,
      height: 34.h,
      child: IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.menu,
        ),
      ),
    );
  }
}
