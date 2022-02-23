// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'homilies.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Homilies _$HomiliesFromJson(Map<String, dynamic> json) {
  return Homilies(
    id: json['id'] as int?,
    title: json['title'] as String?,
    description: json['description'] as String?,
    thumbnail: json['thumbnail'] as String?,
    broadcasting_date: json['broadcasting_date'] as String?,
    video_id: json['video_id'] as String?,
    liturgical_year: json['liturgical_year'] as String?,
    liturgical_day: json['liturgical_day'] as String?,
    liturgical_time: json['liturgical_time'] as String?,
    city: json['city'] as String?,
    parish: json['parish'] as String?,
    preacher: json['preacher'] as String?,
  );
}

Map<String, dynamic> _$HomiliesToJson(Homilies instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'thumbnail': instance.thumbnail,
      'broadcasting_date': instance.broadcasting_date,
      'video_id': instance.video_id,
      'liturgical_year': instance.liturgical_year,
      'liturgical_day': instance.liturgical_day,
      'liturgical_time': instance.liturgical_time,
      'city': instance.city,
      'parish': instance.parish,
      'preacher': instance.preacher,
    };
