import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:spoonacular/src/domain/models/response/menu_item.dart';

import '../../../utils/constants/strings.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: baseUrl, parser: Parser.JsonSerializable)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;
//abstracted method that would be responsible of getting the data from the server,
  @GET('menuItems/search')
  Future<HttpResponse<MenuItemResponse>> getMenuItems({
    @Query("apiKey") String? apiKey,
    @Query("query") String? query,
    @Query("number") int? number,
  });
}