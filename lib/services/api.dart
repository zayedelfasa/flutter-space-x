import 'package:dio/dio.dart';
import 'package:flutterspacex/constants/shared_pref.dart';
import 'package:flutterspacex/models/LatestLaunch.dart';
import 'package:flutterspacex/models/NextLaunch.dart';
import 'package:flutterspacex/models/Rocket.dart' as R;
import 'package:flutterspacex/models/UpcommingLaunch.dart';
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

  Future<List<UpcommingLaunch>> getRequestUpcommingLaunch() async {
    try {
      Response response = await diohttp.get("/launches/upcoming");
      var upcommingLaunchList = List<UpcommingLaunch>();
      if(response.statusCode == 200) {
        var parsed = response.data as List<dynamic>;
        for (int i = 0 ; i < 10 ; i++) {
//          print("API data upcomming launch : ${parsed[i]}");
          upcommingLaunchList.add(UpcommingLaunch.fromJson(parsed[i]));
        }

        return upcommingLaunchList;
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

  Future<List<LatestLaunch>> getRequestLatestLaunch() async {
    try {
      Response response = await diohttp.get("/launches/past");
      var latestLaunchList = List<LatestLaunch>();
      if(response.statusCode == 200) {
        var parsed = response.data as List<dynamic>;
        int all = parsed.length >= 10 ? 10 : parsed.length;
        for (int i = 0 ; i < all; i++) {
//          print("API data upcomming launch : ${parsed[i]}");
          latestLaunchList.add(LatestLaunch.fromJson(parsed[i]));
        }

        return latestLaunchList;
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

  Future<List<R.Rocket>> getRequestRockets() async {
    try {
      Response response = await diohttp.get("/rockets");
      var rocketList = List<R.Rocket>();
      if(response.statusCode == 200) {
        var parsed = response.data as List<dynamic>;
        for (int i = 0 ; i < parsed.length; i++) {
          print("API data rocket : ${parsed[i]}");
          rocketList.add(R.Rocket.fromJson(parsed[i]));
        }

        return rocketList;
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
