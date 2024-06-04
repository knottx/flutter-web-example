import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'dashboard_page_state.g.dart';

@JsonSerializable()
class DashboardPageState extends Equatable {
  final int selectedIndex;

  const DashboardPageState({
    this.selectedIndex = 0,
  });

  factory DashboardPageState.fromJson(Map<String, dynamic> json) =>
      _$DashboardPageStateFromJson(json);

  Map<String, dynamic> toJson() => _$DashboardPageStateToJson(this);

  @override
  List<Object?> get props => [
        selectedIndex,
      ];

  DashboardPageState copyWith({
    int? selectedIndex,
  }) {
    return DashboardPageState(
      selectedIndex: selectedIndex ?? this.selectedIndex,
    );
  }
}
