import 'package:json_annotation/json_annotation.dart';

part 'tvshow.g.dart';

@JsonSerializable()
class TvShow {
  final int? id;
  final String? title;
  final String? description;
  final String? thumbnail;
  final String? broadcasting_date;
  final String? video_id;

  TvShow({
    this.id,
    this.title,
    this.description,
    this.thumbnail,
    this.broadcasting_date,
    this.video_id,
  });

  factory TvShow.fromJson(Map<String, dynamic> json) =>
      _$TvShowFromJson(json);

  Map<String, dynamic> toJson() => _$TvShowToJson(this);
}
