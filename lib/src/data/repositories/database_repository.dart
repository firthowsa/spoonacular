import 'package:spoonacular/src/domain/models/response/isar/cart/cart_item.dart';

import '../../domain/models/request/menu_item_request.dart';
import '../../domain/models/response/isar/isar_menu_item_response.dart';
import '../../domain/models/response/menu_item.dart';
import '../../domain/repositories/api_repository.dart';
import '../../utils/resources/data_state.dart';
import '../datasources/local/isar_service.dart';

class DatabaseRepository {
  final IsarService _appDatabase;
  final ApiRepository _apiRepository;

  DatabaseRepository(this._appDatabase, this._apiRepository);

  Future<DataState<MenuItemResponse>> getMenuItems() async {
    // Check for data in local database
    final localData = await _appDatabase.getMenuItemResponses();
    // if (kDebugMode) {
    //   print(localData.first.menuItems.first.restaurantChain);
    // }
    if (localData.isNotEmpty) {
      final menuItems = localData.first.toMenuItemResponse();
      return DataSuccess(menuItems);
    }

    // If no local data, fetch from API
    final apiResponse = await _apiRepository.getMenuItems(request: MenuItemRequest());

    if (apiResponse is DataSuccess<MenuItemResponse>) {
      final menuItems = apiResponse.data;
      await _storeMenuItemsInIsar(menuItems); // Store the data in the local database
      return DataSuccess(menuItems!);
    } else {
      final error =apiResponse.error;
      print("Error fetching menu items from API: $apiResponse");
      return DataFailed(error!); // Return an empty list on failure
    }
  }

  Future<DataState<List<CartItem>>> getCartItems() async {
    final cartItems = await _appDatabase.getCarItems();
      return DataSuccess(cartItems);

  }
  Future<void> clearCartItems() async {
    await _appDatabase.clearCart();
  }
  Future<void> updateCartItemQuantity(int? cartItemId, int newQuantity) async {
   await _appDatabase.updateCartItemQuantity(cartItemId, newQuantity);
  }


    Future<void> _storeMenuItemsInIsar(MenuItemResponse? menuItems) async {
    if (menuItems != null) {
      final isarMenuItemResponse = IsarMenuItemResponse.fromMenuItemResponse(menuItems);
      await _appDatabase.addMenuItemResponse(isarMenuItemResponse);
    }
  }
}
