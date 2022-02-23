import 'package:json_annotation/json_annotation.dart';

part 'songs.g.dart';

@JsonSerializable()
class Songs {
  final int? id;
  final String? title;
  final String? description;
  final String? thumbnail;
  final String? broadcasting_date;
  final String? video_id;

  Songs({
    this.id,
    this.title,
    this.description,
    this.thumbnail,
    this.broadcasting_date,
    this.video_id,
  });

  factory Songs.fromJson(Map<String, dynamic> json) =>
      _$SongsFromJson(json);

  Map<String, dynamic> toJson() => _$SongsToJson(this);
}
