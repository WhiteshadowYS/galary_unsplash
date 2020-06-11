import 'package:digital_home/dictionary/flutter_dictionary.dart';
import 'package:digital_home/store/app/app_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_redux_navigation/flutter_redux_navigation.dart';
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
  }

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: widget.store,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
//        onGenerateTitle: (BuildContext context) {
//          FlutterDictionary.init(context);
//          return FlutterDictionary.instance.language.global.appTitle;
//        },
        localizationsDelegates: [
          const FlutterDictionaryDelegate(),
          GlobalWidgetsLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        locale: Locale('en'),
        supportedLocales: [
          Locale('en'),
        ],
        home: Scaffold(),
        navigatorKey: NavigatorHolder.navigatorKey,
//        onGenerateRoute: (RouteSettings settings) => AppRouter.onGenerateRoute(settings),
      ),
    );
  }
}
