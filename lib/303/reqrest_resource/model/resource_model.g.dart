// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resource_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResourceModel _$ResourceModelFromJson(Map<String, dynamic> json) =>
    ResourceModel(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Data.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ResourceModelToJson(ResourceModel instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      $enumDecode(_$StatusCodeEnumMap, json['staus']),
      id: json['id'] as int?,
      name: json['name'] as String?,
      year: json['year'] as int?,
      color: json['renk'] as String?,
      pantoneValue: _fetchCustom(json['pantoneValue'] as String),
      price: json['price'] as String?,
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'year': instance.year,
      'renk': instance.color,
      'pantoneValue': instance.pantoneValue,
      'price': instance.price,
      'staus': _$StatusCodeEnumMap[instance.staus],
    };

const _$StatusCodeEnumMap = {
  StatusCode.succes: 200,
  StatusCode.weird: 500,
};
