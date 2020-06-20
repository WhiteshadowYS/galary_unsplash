import 'package:digital_home/ui/layouts/main_layout/main_layout.dart';
import 'package:flutter/material.dart';

class UnknownPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MainLayout(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Container(
              height: 36,
              width: double.infinity,
              child: Text(
                'Unknown Page',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
