import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'a_page_state.g.dart';

@JsonSerializable()
class APageState extends Equatable {
  final int count;

  const APageState({
    this.count = 0,
  });

  factory APageState.fromJson(Map<String, dynamic> json) =>
      _$APageStateFromJson(json);

  Map<String, dynamic> toJson() => _$APageStateToJson(this);

  @override
  List<Object?> get props => [count];

  APageState copyWith({
    int? count,
  }) {
    return APageState(
      count: count ?? this.count,
    );
  }
}
