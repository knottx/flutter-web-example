import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'b_page_state.g.dart';

@JsonSerializable()
class BPageState extends Equatable {
  final int count;

  const BPageState({
    this.count = 0,
  });

  factory BPageState.fromJson(Map<String, dynamic> json) =>
      _$BPageStateFromJson(json);

  Map<String, dynamic> toJson() => _$BPageStateToJson(this);

  @override
  List<Object?> get props => [count];

  BPageState copyWith({
    int? count,
  }) {
    return BPageState(
      count: count ?? this.count,
    );
  }
}
