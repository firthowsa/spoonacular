// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CartItemStore on _CartItemStore, Store {
  late final _$cartItemsAtom =
      Atom(name: '_CartItemStore.cartItems', context: context);

  @override
  ObservableList<CartItem> get cartItems {
    _$cartItemsAtom.reportRead();
    return super.cartItems;
  }

  @override
  set cartItems(ObservableList<CartItem> value) {
    _$cartItemsAtom.reportWrite(value, super.cartItems, () {
      super.cartItems = value;
    });
  }

  late final _$isBusyAtom =
      Atom(name: '_CartItemStore.isBusy', context: context);

  @override
  bool get isBusy {
    _$isBusyAtom.reportRead();
    return super.isBusy;
  }

  @override
  set isBusy(bool value) {
    _$isBusyAtom.reportWrite(value, super.isBusy, () {
      super.isBusy = value;
    });
  }

  late final _$noMoreDataAtom =
      Atom(name: '_CartItemStore.noMoreData', context: context);

  @override
  bool get noMoreData {
    _$noMoreDataAtom.reportRead();
    return super.noMoreData;
  }

  @override
  set noMoreData(bool value) {
    _$noMoreDataAtom.reportWrite(value, super.noMoreData, () {
      super.noMoreData = value;
    });
  }

  late final _$errorAtom = Atom(name: '_CartItemStore.error', context: context);

  @override
  DioException? get error {
    _$errorAtom.reportRead();
    return super.error;
  }

  @override
  set error(DioException? value) {
    _$errorAtom.reportWrite(value, super.error, () {
      super.error = value;
    });
  }

  late final _$getCartItemsAsyncAction =
      AsyncAction('_CartItemStore.getCartItems', context: context);

  @override
  Future<void> getCartItems() {
    return _$getCartItemsAsyncAction.run(() => super.getCartItems());
  }

  late final _$updateCartItemQuantityAsyncAction =
      AsyncAction('_CartItemStore.updateCartItemQuantity', context: context);

  @override
  Future<void> updateCartItemQuantity(int? cartItemId, int newQuantity) {
    return _$updateCartItemQuantityAsyncAction
        .run(() => super.updateCartItemQuantity(cartItemId, newQuantity));
  }

  late final _$clearCartAsyncAction =
      AsyncAction('_CartItemStore.clearCart', context: context);

  @override
  Future<void> clearCart() {
    return _$clearCartAsyncAction.run(() => super.clearCart());
  }

  @override
  String toString() {
    return '''
cartItems: ${cartItems},
isBusy: ${isBusy},
noMoreData: ${noMoreData},
error: ${error}
    ''';
  }
}
