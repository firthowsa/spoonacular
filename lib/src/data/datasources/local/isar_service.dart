import 'package:flutter/foundation.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:spoonacular/src/domain/models/response/isar/cart/cart_item.dart';

import '../../../domain/models/response/isar/isar_menu_item_response.dart';
import '../../../domain/models/response/menu_item.dart';

class IsarService {
  late Future<Isar> db;

  IsarService() {
    db = openDB();
  }

  Future<Isar> openDB() async {
    if (Isar.instanceNames.isEmpty) {
      final dir = await getApplicationDocumentsDirectory();
      final isar = await Isar.open(
        [IsarMenuItemResponseSchema,CartItemSchema], // Here we will add a schema's
        directory: dir.path,
        inspector: true,
      );

      return isar;
    }

    return Future.value(Isar.getInstance());
  }
  Future<void> addMenuItemResponse(IsarMenuItemResponse response) async {
    final isar = await db;
    await isar.writeTxn(() async {
      await isar.isarMenuItemResponses.put(response);
    });
  }

  Future<List<IsarMenuItemResponse>> getMenuItemResponses() async {
    final isar = await db;
    return await isar.isarMenuItemResponses.where().findAll();
  }
  Future<void> clearCart() async {
    final isar = await db;
    await isar.writeTxn(() async {
      await isar.cartItems.clear();
    });
  }

  Future<void> addToCart(MenuItem menuItem, double price, int quantity) async {
    final isar = await db;
    await isar.writeTxn(() async {
      // Check if item already exists in cart
      final existingItems = await isar.cartItems.get(menuItem.id);

      // final existingItem = await isar.cartItems
      //     .filter()
      //     .menuItem((q) => q.idEqualTo(menuItem.id))
      //     .findAll();
      if (kDebugMode) {
        print(existingItems);
      }


      if (existingItems != null) {
        // Update quantity if item already exists
        //existingItem. += quantity;
        //await isar.cartItems.put(existingItem);
      } else {
        // Add new item to cart
        final isarMenuItem = IsarMenuItem.fromMenuItem(menuItem);
        await isar.cartItems.put(CartItem(
          menuItem: isarMenuItem,
          price: price,
          quantity: quantity,
        ));
      }
    });
  }

  Future<List<CartItem>> getCarItems() async {
    final isar = await db;
    return await isar.cartItems.where().findAll();
  }

  Future<void> updateCartItemQuantity(int? cartItemId, int newQuantity) async {
    final isar = await db;
    await isar.writeTxn(() async {
      final existingItem = await isar.cartItems.get(cartItemId!);
      if (existingItem != null) {
        existingItem.quantity += newQuantity;
        await isar.cartItems.put(existingItem);
      }
    });
  }

}
