import 'package:isar/isar.dart';

import '../isar_menu_item_response.dart';
part 'cart_item.g.dart';

@Collection()
class CartItem {
  Id? id;
  late IsarMenuItem menuItem;
  late double? price;
  late int quantity;

  CartItem({
    required this.menuItem,

   required this.price,
   required this.quantity,
  });
}


