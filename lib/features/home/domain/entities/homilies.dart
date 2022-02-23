import 'package:json_annotation/json_annotation.dart';

part 'homilies.g.dart';

@JsonSerializable()
class Homilies {
  final int? id;
  final String? title;
  final String? description;
  final String? thumbnail;
  final String? broadcasting_date;
  final String? video_id;
  final String? liturgical_year;
  final String? liturgical_day;
  final String? liturgical_time;
  final String? city;
  final String? parish;
  final String? preacher;

  Homilies({
    this.id,
    this.title,
    this.description,
    this.thumbnail,
    this.broadcasting_date,
    this.video_id,
    this.liturgical_year,
    this.liturgical_day,
    this.liturgical_time,
    this.city,
    this.parish,
    this.preacher,
  });

  factory Homilies.fromJson(Map<String, dynamic> json) =>
      _$HomiliesFromJson(json);

  Map<String, dynamic> toJson() => _$HomiliesToJson(this);
}
