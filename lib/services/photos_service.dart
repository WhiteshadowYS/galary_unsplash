import 'package:gallery_unsplash/helpers/network_helper.dart';
import 'package:gallery_unsplash/models/dto/photo_item_dto.dart';
import 'package:gallery_unsplash/models/dto/photos_response_dto.dart';
import 'package:gallery_unsplash/network/shared/api_error.dart';
import 'package:gallery_unsplash/network/shared/base_network_response.dart';
import 'package:gallery_unsplash/network/shared/base_response.dart';
import 'package:gallery_unsplash/res/consts.dart';

class PhotosService {
  // region [Initialize]
  static const String TAG = '[PhotosService]';

  PhotosService._privateConstructor();

  static final PhotosService _instance = PhotosService._privateConstructor();

  static PhotosService get instance => _instance;
  // endregion

  Future<BaseResponse<PhotosResponseDTO>> getPhotos() async {
    try {
      BaseNetworkResponse response = await HttpHelper.instance.request(
        GET_PHOTOS_URL,
        type: HttpType.get,
        params: {
          CLIENT_ID: HttpHelper.TEST_TOKEN,
        },
      );

      if (response == null || response?.response == null) {
        return BaseResponse<PhotosResponseDTO>(
          error: APIError.getParsingError(NULL_RESPONSE),
        );
      }

      if (response.error != null) {
        return BaseResponse<PhotosResponseDTO>(
          error: response.error,
        );
      }

      PhotosResponseDTO dto = PhotosResponseDTO(items: response.response[DATA].map<PhotoItemDTO>((e) {
        return PhotoItemDTO();
      }).toList());

    } catch(e) {
      logger.e('$TAG => <getPhotos> => catch error: $e');
      return BaseResponse<PhotosResponseDTO>(
        error: APIError.getParsingError(e.toString()),
      );
    }
  }
}