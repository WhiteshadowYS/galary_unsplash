import 'package:digital_home/ui/layouts/main_layout/main_layout.dart';
import 'package:digital_home/ui/loaders/default_loader.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MainLayout(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            //TODO: Yura - Add Logo
            width: 200,
            height: 200,
            color: Colors.red,
          ),
          Container(
            height: 36,
            width: double.infinity,
            child: Text(
              'v0.0.1 + 10'
            ),
          ),
          Container(
            child: DefaultLoader(),
          ),
        ],
      ),
    );
  }
}
