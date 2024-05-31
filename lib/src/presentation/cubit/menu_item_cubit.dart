import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:spoonacular/src/domain/models/request/menu_item_request.dart';
import 'package:spoonacular/src/domain/models/response/menu_item.dart';

import '../../domain/repositories/api_repository.dart';
import '../../utils/resources/data_state.dart';
import 'base_cubit.dart';

part 'menu_item_state.dart';

class MenuItemCubit extends BaseCubit<MenuItemState, List<MenuItem>> {
  final ApiRepository _apiRepository;

  MenuItemCubit(this._apiRepository)
      : super(const RemoteMenuItemsLoading(), []);

  //int _page = 1;

  Future<void> getMenuItems() async {
    if (isBusy) return;

    await run(() async {
      final response = await _apiRepository.getMenuItems(request: MenuItemRequest());

      if (response is DataSuccess) {
        final menuItems = response.data?.menuItems;
        final noMoreData = menuItems!.length < 20;

        data.addAll(menuItems);
        //_page++;

        emit(RemoteMenuItemsSuccess(menuItems: data, noMoreData: noMoreData));
      } else if (response is DataFailed) {
        emit(RemoteMenuItemsFailed(error: response.error));
      }
    });
  }}
