// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'menu_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MenuItemResponseImpl _$$MenuItemResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$MenuItemResponseImpl(
      type: json['type'] as String,
      menuItems: (json['menuItems'] as List<dynamic>)
          .map((e) => MenuItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      offset: (json['offset'] as num).toInt(),
      number: (json['number'] as num).toInt(),
      totalMenuItems: (json['totalMenuItems'] as num).toInt(),
      processingTimeMs: (json['processingTimeMs'] as num).toInt(),
    );

Map<String, dynamic> _$$MenuItemResponseImplToJson(
        _$MenuItemResponseImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'menuItems': instance.menuItems,
      'offset': instance.offset,
      'number': instance.number,
      'totalMenuItems': instance.totalMenuItems,
      'processingTimeMs': instance.processingTimeMs,
    };

_$MenuItemImpl _$$MenuItemImplFromJson(Map<String, dynamic> json) =>
    _$MenuItemImpl(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      image: json['image'] as String,
      imageType: json['imageType'] as String,
      restaurantChain: json['restaurantChain'] as String,
      servings: Servings.fromJson(json['servings'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MenuItemImplToJson(_$MenuItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'image': instance.image,
      'imageType': instance.imageType,
      'restaurantChain': instance.restaurantChain,
      'servings': instance.servings,
    };

_$ServingsImpl _$$ServingsImplFromJson(Map<String, dynamic> json) =>
    _$ServingsImpl(
      number: (json['number'] as num).toDouble(),
      size: (json['size'] as num?)?.toDouble(),
      unit: json['unit'] as String?,
    );

Map<String, dynamic> _$$ServingsImplToJson(_$ServingsImpl instance) =>
    <String, dynamic>{
      'number': instance.number,
      'size': instance.size,
      'unit': instance.unit,
    };
