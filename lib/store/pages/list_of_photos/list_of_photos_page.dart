import 'package:flutter/material.dart';
import 'package:gallery_unsplash/dictionary/flutter_dictionary.dart';
import 'package:gallery_unsplash/res/colors.dart';
import 'package:gallery_unsplash/res/font_styles.dart';
import 'package:gallery_unsplash/ui/layouts/main_layout/main_layout.dart';

class ListOfPhotosPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MainLayout(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          FlutterDictionary.instance.language.listOfPhotosPage.title,
          style: Fonts.pagesTitle(),
        ),
        backgroundColor: PRIMARY_COLOR,
      ),
      bgColor: PRIMARY_WHITE,
      child: Container(
        color: Colors.red,
      ),
    );
  }
}
