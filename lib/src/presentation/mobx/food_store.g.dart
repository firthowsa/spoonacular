// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'food_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$MenuItemStore on _MenuItemStore, Store {
  late final _$menuItemsAtom =
      Atom(name: '_MenuItemStore.menuItems', context: context);

  @override
  ObservableList<MenuItem> get menuItems {
    _$menuItemsAtom.reportRead();
    return super.menuItems;
  }

  @override
  set menuItems(ObservableList<MenuItem> value) {
    _$menuItemsAtom.reportWrite(value, super.menuItems, () {
      super.menuItems = value;
    });
  }

  late final _$isBusyAtom =
      Atom(name: '_MenuItemStore.isBusy', context: context);

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
      Atom(name: '_MenuItemStore.noMoreData', context: context);

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

  late final _$errorAtom = Atom(name: '_MenuItemStore.error', context: context);

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

  late final _$getMenuItemsAsyncAction =
      AsyncAction('_MenuItemStore.getMenuItems', context: context);

  @override
  Future<void> getMenuItems() {
    return _$getMenuItemsAsyncAction.run(() => super.getMenuItems());
  }

  @override
  String toString() {
    return '''
menuItems: ${menuItems},
isBusy: ${isBusy},
noMoreData: ${noMoreData},
error: ${error}
    ''';
  }
}
