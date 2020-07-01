import 'package:logger/logger.dart';

// region [Routing]
const String ROUTE_SPLASH_SCREEN  = '/splash_screen';

const String ROUTE_LIST_OF_PHOTO_PAGE = '/list_of_photo_page';
const String ROUTE_SINGLE_PHOTO_PAGE = '/single_photo_page';
// endregion

// region [http]
const String GET_PHOTOS_URL = 'photos';

const int HTTP_OK = 200;
const int HTTP_MAX_OK = 299;
const int HTTP_UNPROCESSABLE = 422;

const String ACCEPT = 'accept';
const String CONTENT_TYPE_KEY = 'Content-Type';
const String CONTENT_TYPE_VALUE = 'application/json';
const String TOKEN_KEY = 'Authorization';
const String TOKEN_BASE = 'Bearer ';
// endregion

// region [Debug errors]
const String NO_INTERNET_CONNECTION_ERROR = 'NO_INTERNET_CONNECTION_ERROR';
const String INTERNET_CONNECTION_CATCH_ERROR = 'INTERNET_CONNECTION_CATCH_ERROR';
const String NULL_RESPONSE = 'NULL_RESPONSE';
// endregion

// region [MAIN]
const String EMPTY_STRING = '';
const String DATA = 'data';
const String CLIENT_ID = 'client_id';
// endregion

// region [Language]
const String BASE_LOCALE = 'en';
const String UK_LOCALE = 'uk';
const String RU_LOCALE = 'ru';
const String EN_LOCALE = 'en';
// endregion

// region [ScreenUtil]
const bool DESIGN_SCREEN_ALLOW_FONT_SCALING = true;
const double DESIGN_SCREEN_HEIGHT = 640.0;
const double DESIGN_SCREEN_WIDTH = 360.0;
// endregion

// region [Durations]
const Duration initializationDuration = const Duration(seconds: 2);
// endregion

var logger = Logger();
