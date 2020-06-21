import 'package:digital_home/res/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Fonts {
  static TextStyle version({double size = 12.0}) {
    return GoogleFonts.roboto(
      color: WHITE,
      fontSize: size,
    );
  }
}