// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'songs.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Songs _$SongsFromJson(Map<String, dynamic> json) {
  return Songs(
    id: json['id'] as int?,
    title: json['title'] as String?,
    description: json['description'] as String?,
    thumbnail: json['thumbnail'] as String?,
    broadcasting_date: json['broadcasting_date'] as String?,
    video_id: json['video_id'] as String?,
  );
}

Map<String, dynamic> _$SongsToJson(Songs instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'thumbnail': instance.thumbnail,
      'broadcasting_date': instance.broadcasting_date,
      'video_id': instance.video_id,
    };
