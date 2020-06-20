import 'package:digital_home/res/consts.dart';
import 'package:digital_home/ui/pages/auth_page/auth_page.dart';
import 'package:digital_home/ui/pages/home_page/home_page.dart';
import 'package:digital_home/ui/pages/shared/splash_screen.dart';
import 'package:digital_home/ui/pages/shared/unknown_page.dart';
import 'package:flutter/material.dart';

class RouteHelper {
  // region [Initialization]
  static const String TAG = '[RouteHelper]';

  RouteHelper._privateConstructor();

  static final RouteHelper _instance = RouteHelper._privateConstructor();

  static RouteHelper get instance => _instance;
  // endregion

  Route onGenerateRoute(RouteSettings settings) {
    switch(settings.name) {
      case ROUTE_SPLASH_SCREEN:
        return _defaultRoute(
          settings: settings,
          page: SplashScreen(),
        );

      case ROUTE_AUTH_PAGE:
        return _defaultRoute(
          settings: settings,
          page: AuthPage(),
        );

      case ROUTE_HOME_PAGE:
        return _defaultRoute(
          settings: settings,
          page: HomePage(),
        );


      default:
        return _defaultRoute(
          settings: settings,
          page: UnknownPage(),
        );
    }
  }

  MaterialPageRoute _defaultRoute({RouteSettings settings, Widget page}) {
    return MaterialPageRoute(
      settings: settings,
      builder: (BuildContext context) => page,
    );
  }
}