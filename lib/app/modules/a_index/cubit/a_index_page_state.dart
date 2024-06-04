import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'a_index_page_state.g.dart';

@JsonSerializable()
class AIndexPageState extends Equatable {
  final int count;

  const AIndexPageState({
    this.count = 5,
  });

  factory AIndexPageState.fromJson(Map<String, dynamic> json) =>
      _$AIndexPageStateFromJson(json);

  Map<String, dynamic> toJson() => _$AIndexPageStateToJson(this);

  @override
  List<Object?> get props => [count];

  AIndexPageState copyWith({
    int? count,
  }) {
    return AIndexPageState(
      count: count ?? this.count,
    );
  }
}
