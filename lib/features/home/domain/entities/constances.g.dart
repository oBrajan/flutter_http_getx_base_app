// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'constances.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Constances _$ConstancesFromJson(Map<String, dynamic> json) {
  return Constances(
    id: json['id'] as int?,
    title: json['title'] as String?,
    description: json['description'] as String?,
    thumbnail: json['thumbnail'] as String?,
    broadcasting_date: json['broadcasting_date'] as String?,
    video_id: json['video_id'] as String?,
  );
}

Map<String, dynamic> _$ConstancesToJson(Constances instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'thumbnail': instance.thumbnail,
      'broadcasting_date': instance.broadcasting_date,
      'video_id': instance.video_id,
    };
