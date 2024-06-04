// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'a_index_page_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AIndexPageState _$AIndexPageStateFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'AIndexPageState',
      json,
      ($checkedConvert) {
        final val = AIndexPageState(
          count: $checkedConvert('count', (v) => (v as num?)?.toInt() ?? 5),
        );
        return val;
      },
    );

Map<String, dynamic> _$AIndexPageStateToJson(AIndexPageState instance) =>
    <String, dynamic>{
      'count': instance.count,
    };
