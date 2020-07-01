import 'package:flutter/material.dart';
import 'package:gallery_unsplash/models/models/photo_user.dart';
import 'package:json_annotation/json_annotation.dart';

@JsonSerializable(
  fieldRename: FieldRename.snake,
  checked: true,
  explicitToJson: true,
)
class PhotoItemDTO {
  @JsonKey(name: "id", required: false, nullable: true)
  final String id;

  @JsonKey(name: "created_at", required: false, nullable: true)
  final String createdAt;

  @JsonKey(name: "updated_at", required: false, nullable: true)
  final String updatedAt;

  @JsonKey(name: "description", required: false, nullable: true)
  final String description;

  @JsonKey(name: "alt_description", required: false, nullable: true)
  final String altDescription;

  @JsonKey(name: "urls", required: false, nullable: true)
  final Map<String, String> urls;

  @JsonKey(name: "links", required: false, nullable: true)
  final Map<String, String> links;

  @JsonKey(name: "likes", required: false, nullable: true)
  final int likes;

  @JsonKey(name: "user", required: false, nullable: true)
  final PhotoUser user;

  PhotoItemDTO({
    @required this.id,
    @required this.createdAt,
    @required this.updatedAt,
    @required this.description,
    @required this.altDescription,
    @required this.urls,
    @required this.links,
    @required this.likes,
    @required this.user,
  });
}