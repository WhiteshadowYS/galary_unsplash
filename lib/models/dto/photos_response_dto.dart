import 'package:flutter/material.dart';
import 'package:gallery_unsplash/models/dto/photo_item_dto.dart';

class PhotosResponseDTO {
  List<PhotoItemDTO> items;

  PhotosResponseDTO({
    @required this.items,
  });
}