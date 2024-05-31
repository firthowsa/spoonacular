import '../../../utils/constants/strings.dart';

class MenuItemRequest {
  final String apiKey;
  final String query;
  final int number;
//,abc-news,cbs-news
  MenuItemRequest( {
    this.apiKey = defaultApiKey,
    this.query = 'pizza',
    this.number = 20,
  });
}