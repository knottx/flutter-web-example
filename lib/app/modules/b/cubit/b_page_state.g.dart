// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'b_page_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BPageState _$BPageStateFromJson(Map<String, dynamic> json) => $checkedCreate(
      'BPageState',
      json,
      ($checkedConvert) {
        final val = BPageState(
          count: $checkedConvert('count', (v) => (v as num?)?.toInt() ?? 0),
        );
        return val;
      },
    );

Map<String, dynamic> _$BPageStateToJson(BPageState instance) =>
    <String, dynamic>{
      'count': instance.count,
    };
