import 'package:gallery_unsplash/models/dto/photos_response_dto.dart';
import 'package:gallery_unsplash/network/shared/base_response.dart';
import 'package:gallery_unsplash/services/photos_service.dart';

class PhotosRepository {
  // region [Initialize]
  static const String TAG = '[PhotosRepository]';

  PhotosRepository._privateConstructor();

  static final PhotosRepository _instance = PhotosRepository._privateConstructor();

  static PhotosRepository get instance => _instance;

  // endregion

  Future<BaseResponse<PhotosResponseDTO>> getPhotos() {
    return PhotosService.instance.getPhotos();
  }
}