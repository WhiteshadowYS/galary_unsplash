import 'package:flutter/material.dart';
import 'package:gallery_unsplash/models/interfaces/i_user.dart';
import 'package:json_annotation/json_annotation.dart';

@JsonSerializable(
  fieldRename: FieldRename.snake,
  checked: true,
  explicitToJson: true,
)
class PhotoUser implements IUser {
  @override
  @JsonKey(name: "id", required: false, nullable: true)
  final String id;

  @override
  @JsonKey(name: "username", required: false, nullable: true)
  final String userName;

  @override
  @JsonKey(name: "first_name", required: false, nullable: true)
  final String first_name;

  @override
  @JsonKey(name: "last_name", required: false, nullable: true)
  final String second_name;

  @override
  PhotoUser({
    @required this.id,
    @required this.userName,
    @required this.first_name,
    @required this.second_name,
  });
}
