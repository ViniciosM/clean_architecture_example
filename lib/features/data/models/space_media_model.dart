import 'dart:convert';

import 'package:clean_architecture_flutter/features/domain/entities/space_media_entity.dart';

class SpaceMediaModel extends SpaceMediaEntity {
  SpaceMediaModel(
      {required String description,
      required String mediaType,
      required String title,
      required String mediaUrl})
      : super(
            description: description,
            mediaType: mediaType,
            title: title,
            mediaUrl: mediaUrl);

  Map<String, dynamic> toMap() {
    return {
      'description': description,
      'mediaType': mediaType,
      'title': title,
      'mediaUrl': mediaUrl,
    };
  }

  factory SpaceMediaModel.fromMap(Map<String, dynamic> map) {
    return SpaceMediaModel(
      description: map['description'] ?? '',
      mediaType: map['mediaType'] ?? '',
      title: map['title'] ?? '',
      mediaUrl: map['mediaUrl'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory SpaceMediaModel.fromJson(String source) =>
      SpaceMediaModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'SpaceMediaModel(description: $description, mediaType: $mediaType, title: $title, mediaUrl: $mediaUrl)';
  }
}
