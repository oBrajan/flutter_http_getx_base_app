import 'package:json_annotation/json_annotation.dart';

part 'constances.g.dart';

@JsonSerializable()
class Constances {
  final int? id;
  final String? title;
  final String? description;
  final String? thumbnail;
  final String? broadcasting_date;
  final String? video_id;

  Constances({
    this.id,
    this.title,
    this.description,
    this.thumbnail,
    this.broadcasting_date,
    this.video_id,
  });

  factory Constances.fromJson(Map<String, dynamic> json) =>
      _$ConstancesFromJson(json);

  Map<String, dynamic> toJson() => _$ConstancesToJson(this);
}
