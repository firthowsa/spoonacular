import 'package:isar/isar.dart';

import '../menu_item.dart';

part 'isar_menu_item_response.g.dart';


@Collection()
class IsarMenuItemResponse {
  Id? id;
  late String type;
  late List<IsarMenuItem> menuItems;
  late int offset;
  late int number;
  late int totalMenuItems;
  late int processingTimeMs;

  // Conversion method
  static IsarMenuItemResponse fromMenuItemResponse(MenuItemResponse response) {
    return IsarMenuItemResponse()
      ..type = response.type
      ..menuItems = response.menuItems.map((item) => IsarMenuItem.fromMenuItem(item)).toList()
      ..offset = response.offset
      ..number = response.number
      ..totalMenuItems = response.totalMenuItems
      ..processingTimeMs = response.processingTimeMs;
  }

  // Reverse conversion method
  MenuItemResponse toMenuItemResponse() {
    return MenuItemResponse(
      type: type,
      menuItems: menuItems.map((item) => item.toMenuItem()).toList(),
      offset: offset,
      number: number,
      totalMenuItems: totalMenuItems,
      processingTimeMs: processingTimeMs,
    );
  }
}

@Embedded()
class IsarMenuItem {
  late int id;
  late String title;
  late String image;
  late String imageType;
  late String restaurantChain;
  late IsarServings servings;

  // Conversion method
  static IsarMenuItem fromMenuItem(MenuItem item) {
    return IsarMenuItem()
      ..id = item.id
      ..title = item.title
      ..image = item.image
      ..imageType = item.imageType
      ..restaurantChain = item.restaurantChain
      ..servings = IsarServings.fromServings(item.servings);
  }

  // Reverse conversion method
  MenuItem toMenuItem() {
    return MenuItem(
      id: id,
      title: title,
      image: image,
      imageType: imageType,
      restaurantChain: restaurantChain,
      servings: servings.toServings(),
    );
  }
}

@Embedded()
class IsarServings {
  late double number;
  double? size;
  String? unit;

  // Conversion method
  static IsarServings fromServings(Servings servings) {
    return IsarServings()
      ..number = servings.number
      ..size = servings.size
      ..unit = servings.unit;
  }

  // Reverse conversion method
  Servings toServings() {
    return Servings(
      number: number,
      size: size,
      unit: unit,
    );
  }
}

