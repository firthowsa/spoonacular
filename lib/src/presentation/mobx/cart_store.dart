import 'package:flutter/foundation.dart';
import 'package:mobx/mobx.dart';
import 'package:dio/dio.dart';
import 'package:spoonacular/src/domain/models/response/isar/cart/cart_item.dart';

import '../../data/repositories/database_repository.dart';
import '../../utils/resources/data_state.dart';

part 'cart_store.g.dart';

class CartItemStore = _CartItemStore with _$CartItemStore;

abstract class _CartItemStore with Store {
  final DatabaseRepository _databaseRepository;

  _CartItemStore(this._databaseRepository);

  @observable
  ObservableList<CartItem> cartItems = ObservableList<CartItem>();

  @observable
  bool isBusy = false;

  @observable
  bool noMoreData = false;

  @observable
  DioException? error;

  @action
  Future<void> getCartItems() async {
    if (isBusy) return;

    isBusy = true;
    error = null;

    final response = await _databaseRepository.getCartItems();

    if (response is DataSuccess) {
      if (kDebugMode) {
        print(response.data?.first.price);
      }
      final fetchedCartItems = response.data ?? [];

      noMoreData = fetchedCartItems.length < 20;
      cartItems.addAll(fetchedCartItems);

    } else if (response is DataFailed) {
      error = error;
    }

    isBusy = false;
  }

  @action
  Future<void> updateCartItemQuantity(int? cartItemId, int newQuantity) async {
    if (isBusy) return;

    isBusy = true;
    error = null;

    try {
      await _databaseRepository.updateCartItemQuantity(cartItemId, newQuantity);
      await getCartItems(); // Fetch the latest cart items

    } catch (e) {
      error = DioException(
        requestOptions: RequestOptions(path: ''), // Providing a default RequestOptions
        error: e.toString(),
      );
    } finally {
      isBusy = false;
    }
  }
  @action
  Future<void> clearCart() async {
    if (isBusy) return;

    isBusy = true;
    error = null;

    try {
      await _databaseRepository.clearCartItems();
      cartItems.clear();
    } catch (e) {
      error = DioException(
        requestOptions: RequestOptions(path: ''), // Providing a default RequestOptions
        error: e.toString(),
      );
    } finally {
      isBusy = false;
    }
  }}
