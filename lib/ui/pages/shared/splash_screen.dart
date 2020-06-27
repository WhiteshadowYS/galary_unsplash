import 'package:digital_home/res/colors.dart';
import 'package:digital_home/res/consts.dart';
import 'package:digital_home/res/font_styles.dart';
import 'package:digital_home/ui/layouts/main_layout/main_layout.dart';
import 'package:digital_home/ui/loaders/default_loader.dart';
import 'package:digital_home/ui/shared/logo_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_version/get_version.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  String appVersion;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ScreenUtil.init(
        height: DESIGN_SCREEN_HEIGHT,
        width: DESIGN_SCREEN_WIDTH,
        allowFontScaling: DESIGN_SCREEN_ALLOW_FONT_SCALING,
      );
    });
    updateAppVersion();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          LogoText(
            size: 56.0,
            color: WHITE,
          ),
          const SizedBox(height: 128.0),
          DefaultLoader(),
          const SizedBox(height: 24.0),
          Container(
            alignment: Alignment.center,
            height: 36,
            width: double.infinity,
            child: Text(
              appVersion ?? EMPTY_STRING,
              style: Fonts.version(),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> updateAppVersion() async {
    String versionName;
    String versionCode;
    String versionPlatform;

    try {
      versionName = await GetVersion.projectVersion;
      logger.d('Version Name: $versionName');
    } on PlatformException {
      logger.e('Failed to get project version.');
      versionName = null;
    }

    try {
      versionCode = await GetVersion.projectCode;
      logger.d('Version Code: $versionCode');
    } on PlatformException {
      logger.e('Failed to get code version.');
      versionCode = null;
    }

    try {
      versionPlatform = await GetVersion.platformVersion;
      logger.d('Version Platform: $versionPlatform');
    } on PlatformException {
      logger.e('Failed to get platform version.');
      versionPlatform = null;
    }

    setState(() {
      appVersion = '$versionPlatform \n $versionName + $versionCode';
    });
  }
}
