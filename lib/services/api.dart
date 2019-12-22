import 'package:flutterspacex/constants/shared_pref.dart';
import 'package:flutterspacex/services/http.dart';

class Api {
  var diohttp = DioHttp(baseURL: SharefPref.ENDPOINT).dio();

}