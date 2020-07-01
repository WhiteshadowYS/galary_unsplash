import 'package:gallery_unsplash/res/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Fonts {
  static TextStyle fieldTextStyle({double size = 16.0}) {
    return GoogleFonts.roboto(
      color: PRIMARY_COLOR,
      fontWeight: FontWeight.w600,
      fontSize: ScreenUtil().setSp(size),
    );
  }

  static TextStyle hintTextStyle({double size = 16.0}) {
    return GoogleFonts.lato(
      color: PRIMARY_COLOR,
      fontWeight: FontWeight.w300,
      fontSize: ScreenUtil().setSp(size),
    );
  }

  static TextStyle version({double size = 12.0}) {
    return GoogleFonts.roboto(
      color: WHITE,
      fontSize: size,
    );
  }
}