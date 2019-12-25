import 'package:dio/dio.dart';
import 'package:flutterspacex/constants/shared_pref.dart';
import 'package:flutterspacex/models/NextLaunch.dart';
import 'package:flutterspacex/services/http.dart';

class Api {
  var diohttp = DioHttp(baseURL: SharefPref.ENDPOINT).dio();

  Future<NextLaunch> getRequestNextLaunch() async {
    try {
      Response response = await diohttp.get("/launches/next");
      if(response.statusCode == 200) {
//        print("Data next launch : ${response.data}");
        return NextLaunch.fromJson(response.data);
      } else {
        return null;
      }
    } on DioError catch(e) {
      print("RESPONSE error data : ${e.response.data}");
      print("RESPONSE error headers : ${e.response.headers}");
      print("RESPONSE error error : ${e.response.request}");
    }
    return null;
  }
}
