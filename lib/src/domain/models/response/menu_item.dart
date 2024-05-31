import 'package:freezed_annotation/freezed_annotation.dart';

part 'menu_item.freezed.dart';
part 'menu_item.g.dart';

@freezed
class MenuItemResponse with _$MenuItemResponse {
  const factory MenuItemResponse({
    required String type,
    required List<MenuItem> menuItems,
    required int offset,
    required int number,
    required int totalMenuItems,
    required int processingTimeMs,
  }) = _MenuItemResponse;

  factory MenuItemResponse.fromJson(Map<String, dynamic> json) =>
      _$MenuItemResponseFromJson(json);
}

@freezed
class MenuItem with _$MenuItem {
  const factory MenuItem({
    required int id,
    required String title,
    required String image,
    required String imageType,
    required String restaurantChain,
    required Servings servings,
  }) = _MenuItem;

  factory MenuItem.fromJson(Map<String, dynamic> json) =>
      _$MenuItemFromJson(json);
}

@freezed
class Servings with _$Servings {
  const factory Servings({
    required double number,
    double? size,
    String? unit,
  }) = _Servings;

  factory Servings.fromJson(Map<String, dynamic> json) =>
      _$ServingsFromJson(json);
}
