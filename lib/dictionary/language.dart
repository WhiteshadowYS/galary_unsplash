import 'package:flutter/cupertino.dart';
import 'package:gallery_unsplash/dictionary/splitted_language/general_language.dart';
import 'package:gallery_unsplash/dictionary/splitted_language/list_of_photos_dictionary.dart';
import 'package:gallery_unsplash/dictionary/splitted_language/single_photo_dictionary.dart';

class Language {
  final GeneralLanguage generalLanguage;
  final SinglePhotoDictionary singlePhotoPage;
  final ListOfPhotosDictionary listOfPhotosPage;

  Language({
    @required this.generalLanguage,
    @required this.listOfPhotosPage,
    @required this.singlePhotoPage,
  });
}
