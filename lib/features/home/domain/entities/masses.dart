import 'package:json_annotation/json_annotation.dart';

part 'masses.g.dart';

@JsonSerializable()
class Masses {
  final int? id;
  final String? title;
  final String? description;
  final String? thumbnail;
  final String? broadcasting_date;
  final String? video_id;

  Masses({
    this.id,
    this.title,
    this.description,
    this.thumbnail,
    this.broadcasting_date,
    this.video_id,
  });

  factory Masses.fromJson(Map<String, dynamic> json) =>
      _$MassesFromJson(json);

  Map<String, dynamic> toJson() => _$MassesToJson(this);
}
