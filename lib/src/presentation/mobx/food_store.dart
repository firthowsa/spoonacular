import 'package:mobx/mobx.dart';
import 'package:dio/dio.dart';
import 'package:spoonacular/src/domain/models/response/menu_item.dart';

import '../../data/repositories/database_repository.dart';
import '../../utils/resources/data_state.dart';

part 'food_store.g.dart';

class MenuItemStore = _MenuItemStore with _$MenuItemStore;

abstract class _MenuItemStore with Store {
  final DatabaseRepository _databaseRepository;

  _MenuItemStore(this._databaseRepository);

  @observable
  ObservableList<MenuItem> menuItems = ObservableList<MenuItem>();

  @observable
  bool isBusy = false;

  @observable
  bool noMoreData = false;

  @observable
  DioException? error;

  @action
  Future<void> getMenuItems() async {
    if (isBusy) return;

    isBusy = true;
    error = null;

    final response = await _databaseRepository.getMenuItems();

    if (response is DataSuccess) {
      final fetchedMenuItems = response.data?.menuItems ?? [];
      noMoreData = fetchedMenuItems.length < 20;
      menuItems.addAll(fetchedMenuItems);

    } else if (response is DataFailed) {
      error = response.error;
    }

    isBusy = false;
  }
}
