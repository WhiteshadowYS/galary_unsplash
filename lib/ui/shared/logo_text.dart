import 'package:gallery_unsplash/res/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LogoText extends StatelessWidget {
  final double size;
  final Color color;

  LogoText({
    @required this.size,
    this.color = PRIMARY_COLOR,
  }) : assert(size != null, throw('Size must be initialize'));

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          alignment: Alignment.centerLeft,
          width: size * 4,
          child: Text(
            'Smart',
            style: GoogleFonts.lato(
              fontSize: size,
              fontWeight: FontWeight.bold,
              color: color,
            ),
          ),
        ),
        Container(
          alignment: Alignment.centerRight,
          width: size * 4,
          child: Text(
            'Home',
            style: GoogleFonts.lato(
              fontSize: size,
              fontWeight: FontWeight.w300,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}
