import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_redux_navigation/flutter_redux_navigation.dart';
import 'package:gallery_unsplash/dictionary/flutter_dictionary.dart';
import 'package:gallery_unsplash/helpers/route_helper.dart';
import 'package:gallery_unsplash/res/consts.dart';
import 'package:gallery_unsplash/store/app/app_state.dart';
import 'package:gallery_unsplash/store/shared/initialization/initialize_selectors.dart';
import 'package:gallery_unsplash/ui/pages/shared/splash_screen.dart';
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
    super.initState();
    InitializeSelectors.startInitialization(widget.store);
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
        home: SplashScreen(),
        navigatorKey: NavigatorHolder.navigatorKey,
        onGenerateRoute: (RouteSettings settings) => RouteHelper.instance.onGenerateRoute(settings),
      ),
    );
  }
}
