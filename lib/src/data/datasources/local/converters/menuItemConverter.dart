import '../../../../domain/models/response/isar/isar_menu_item_response.dart';
import '../../../../domain/models/response/menu_item.dart';

extension MenuItemResponseMapper on MenuItemResponse {
  IsarMenuItemResponse toIsar() {
    return IsarMenuItemResponse()
      ..type = type
      ..menuItems = menuItems.map((item) => item.toIsar()).toList()
      ..offset = offset
      ..number = number
      ..totalMenuItems = totalMenuItems
      ..processingTimeMs = processingTimeMs;
  }
}

extension MenuItemMapper on MenuItem {
  IsarMenuItem toIsar() {
    return IsarMenuItem()
      ..id = id
      ..title = title
      ..image = image
      ..imageType = imageType
      ..restaurantChain = restaurantChain
      ..servings = servings.toIsar();
  }
}

extension ServingsMapper on Servings {
  IsarServings toIsar() {
    return IsarServings()
      ..number = number
      ..size = size
      ..unit = unit;
  }
}

// Isar to Freezed conversions
extension IsarMenuItemResponseMapper on IsarMenuItemResponse {
  MenuItemResponse toFreezed() {
    return MenuItemResponse(
      type: type,
      menuItems: menuItems.map((item) => item.toFreezed()).toList(),
      offset: offset,
      number: number,
      totalMenuItems: totalMenuItems,
      processingTimeMs: processingTimeMs,
    );
  }
}

extension IsarMenuItemMapper on IsarMenuItem {
  MenuItem toFreezed() {
    return MenuItem(
      id: id,
      title: title,
      image: image,
      imageType: imageType,
      restaurantChain: restaurantChain,
      servings: servings.toFreezed(),
    );
  }
}
extension IsarServingsMapper on IsarServings {
  Servings toFreezed() {
    return Servings(
      number: number,
      size: size,
      unit: unit,
    );
  }
}

