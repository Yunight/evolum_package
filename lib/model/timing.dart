import 'package:json_annotation/json_annotation.dart';

part 'timing.g.dart';

@JsonSerializable(explicitToJson: true)
class Timing {
  final int begin;
  final int end;
  final String text;

  Timing({
    this.begin,
    this.end,
    this.text = "",
  });

  factory Timing.fromJson(Map<String, dynamic> data) => _$TimingFromJson(data);

  Map<String, dynamic> toJson() => _$TimingToJson(this);

  @override
  String toString() => 'Timing[text:$text, list:$begin]';
}
