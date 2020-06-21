import 'package:digital_home/ui/layouts/main_layout/main_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class AuthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MainLayout(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Spacer(),
            Container(
              height: 200.h,
              width: 200.h,
            ),
            const SizedBox(height: 24.0),
            Container(
              height: 46,
              width: double.infinity,
              color: Colors.red,
            ),
            const SizedBox(height: 24.0),
            Container(
              height: 46,
              width: double.infinity,
              color: Colors.red,
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
