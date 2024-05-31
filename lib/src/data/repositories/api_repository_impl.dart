import 'package:spoonacular/src/domain/models/request/menu_item_request.dart';
import 'package:spoonacular/src/domain/models/response/menu_item.dart';

import '../../domain/repositories/api_repository.dart';
import '../../utils/resources/data_state.dart';
import '../datasources/remote/api_service.dart';
import 'base/base_api_repository.dart';

class ApiRepositoryImpl extends BaseApiRepository implements ApiRepository {
  final ApiService _apiService;

  ApiRepositoryImpl(this._apiService);

  @override
  Future<DataState<MenuItemResponse>> getMenuItems({
    required MenuItemRequest request,
  }) {
    return getStateOf<MenuItemResponse>(
      request: () => _apiService.getMenuItems(
        apiKey: request.apiKey,
        query: request.query,
        number: request.number,
      ),
    );
  }



}