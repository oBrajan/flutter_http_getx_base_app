import 'package:json_annotation/json_annotation.dart';

part 'words.g.dart';

@JsonSerializable()
class Words {
  final int? id;
  final String? title;
  final String? description;
  final String? thumbnail;
  final String? broadcasting_date;
  final String? video_id;

  Words({
    this.id,
    this.title,
    this.description,
    this.thumbnail,
    this.broadcasting_date,
    this.video_id,
  });

  factory Words.fromJson(Map<String, dynamic> json) =>
      _$WordsFromJson(json);

  Map<String, dynamic> toJson() => _$WordsToJson(this);
}
