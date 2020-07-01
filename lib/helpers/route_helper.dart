import 'package:gallery_unsplash/res/consts.dart';
import 'package:gallery_unsplash/store/pages/list_of_photos/list_of_photos_page.dart';
import 'package:gallery_unsplash/store/pages/single_photo/single_photo_page.dart';
import 'package:gallery_unsplash/ui/pages/shared/splash_screen.dart';
import 'package:gallery_unsplash/ui/pages/shared/unknown_page.dart';
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

      case ROUTE_LIST_OF_PHOTO_PAGE:
        return _defaultRoute(
          settings: settings,
          page: ListOfPhotosPage(),
        );

      case ROUTE_SINGLE_PHOTO_PAGE:
        return _defaultRoute(
          settings: settings,
          page: SinglePhotoPage(),
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