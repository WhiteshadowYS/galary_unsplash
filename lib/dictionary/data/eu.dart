import 'package:gallery_unsplash/dictionary/language.dart';
import 'package:gallery_unsplash/dictionary/splitted_language/general_language.dart';
import 'package:gallery_unsplash/dictionary/splitted_language/list_of_photos_dictionary.dart';
import 'package:gallery_unsplash/dictionary/splitted_language/single_photo_dictionary.dart';

final Language en = Language(
  listOfPhotosPage: ListOfPhotosDictionary(
    title: 'Home',
    nameField: 'Name:',
    descriptionField: 'Description:',
  ),
  singlePhotoPage: SinglePhotoDictionary(
    title: 'Photo',
    nameField: 'Name:',
    descriptionField: 'Description:',
  ),
  generalLanguage: GeneralLanguage(
    appTitle: 'Digital Home',
  ),
);