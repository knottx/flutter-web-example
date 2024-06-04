import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'a_detail_page_state.g.dart';

@JsonSerializable()
class ADetailPageState extends Equatable {
  final String id;
  final int count;

  const ADetailPageState({
    required this.id,
    this.count = 0,
  });

  factory ADetailPageState.fromJson(Map<String, dynamic> json) =>
      _$ADetailPageStateFromJson(json);

  Map<String, dynamic> toJson() => _$ADetailPageStateToJson(this);

  @override
  List<Object?> get props => [
        id,
        count,
      ];

  ADetailPageState copyWith({
    String? id,
    int? count,
  }) {
    return ADetailPageState(
      id: id ?? this.id,
      count: count ?? this.count,
    );
  }
}
