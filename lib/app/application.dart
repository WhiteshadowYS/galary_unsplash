import 'package:digital_home/dictionary/flutter_dictionary.dart';
import 'package:digital_home/helpers/route_helper.dart';
import 'package:digital_home/res/consts.dart';
import 'package:digital_home/store/app/app_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_redux_navigation/flutter_redux_navigation.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:redux/redux.dart';

class Application extends StatefulWidget {
  final Store<AppState> store;

  Application({Key key, @required this.store}) : super(key: key);

  @override
  _ApplicationState createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  @override
  void initState() {
    ScreenUtil.init(
      context,
      height: DESIGN_SCREEN_HEIGHT,
      width: DESIGN_SCREEN_WIDTH,
      allowFontScaling: DESIGN_SCREEN_ALLOW_FONT_SCALING,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: widget.store,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        onGenerateTitle: (BuildContext context) {
          FlutterDictionary.init(context);
          return FlutterDictionary.instance.language.generalLanguage.appTitle;
        },
        localizationsDelegates: [
          const FlutterDictionaryDelegate(),
          GlobalWidgetsLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        locale: Locale(BASE_LOCALE),
        supportedLocales: [
          Locale(BASE_LOCALE),
        ],
        home: Scaffold(),
        navigatorKey: NavigatorHolder.navigatorKey,
        onGenerateRoute: (RouteSettings settings) => RouteHelper.instance.onGenerateRoute(settings),
      ),
    );
  }
}
