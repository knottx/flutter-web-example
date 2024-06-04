// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboard_page_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DashboardPageState _$DashboardPageStateFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'DashboardPageState',
      json,
      ($checkedConvert) {
        final val = DashboardPageState(
          selectedIndex: $checkedConvert(
              'selectedIndex', (v) => (v as num?)?.toInt() ?? 0),
        );
        return val;
      },
    );

Map<String, dynamic> _$DashboardPageStateToJson(DashboardPageState instance) =>
    <String, dynamic>{
      'selectedIndex': instance.selectedIndex,
    };
