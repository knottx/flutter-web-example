// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'a_page_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

APageState _$APageStateFromJson(Map<String, dynamic> json) => $checkedCreate(
      'APageState',
      json,
      ($checkedConvert) {
        final val = APageState(
          count: $checkedConvert('count', (v) => (v as num?)?.toInt() ?? 0),
        );
        return val;
      },
    );

Map<String, dynamic> _$APageStateToJson(APageState instance) =>
    <String, dynamic>{
      'count': instance.count,
    };
