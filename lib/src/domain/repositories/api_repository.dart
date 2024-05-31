// an abstracted class which contains one method that returns
// a Future data of type MenuItemResponse wrapped with the DataState to
// determine the state of the response.
import 'package:spoonacular/src/domain/models/request/menu_item_request.dart';
import 'package:spoonacular/src/domain/models/response/menu_item.dart';

import '../../utils/resources/data_state.dart';

abstract class ApiRepository{
  Future<DataState<MenuItemResponse>> getMenuItems({
    required MenuItemRequest request,

  });

}