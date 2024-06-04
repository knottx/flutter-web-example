// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'a_detail_page_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ADetailPageState _$ADetailPageStateFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'ADetailPageState',
      json,
      ($checkedConvert) {
        final val = ADetailPageState(
          id: $checkedConvert('id', (v) => v as String),
          count: $checkedConvert('count', (v) => (v as num?)?.toInt() ?? 0),
        );
        return val;
      },
    );

Map<String, dynamic> _$ADetailPageStateToJson(ADetailPageState instance) =>
    <String, dynamic>{
      'id': instance.id,
      'count': instance.count,
    };
