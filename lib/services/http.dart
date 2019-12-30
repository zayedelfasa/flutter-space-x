import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class DioHttp {
  String baseURL;

  DioHttp({@required this.baseURL});

  var _dio = Dio();
  Dio dio() {
    _dio.options.baseUrl = this.baseURL;
    // dio1.options.connectTimeout = 20000;
    // dio1.options.receiveTimeout = 20000;
    _dio.interceptors.clear();
    _dio.interceptors.add(InterceptorsWrapper(onResponse: (Response response) async {
      return response; // continue
    }, onError: (DioError error) async {
      // Do something with response error
      print("DIO_INTERCEPTORS ERROR ${error.toString()}");
      if (error.response.statusCode == 401) {
        // do code
        return null;
      } else {
        return error;
      }
    }));

    return _dio;
  }
}