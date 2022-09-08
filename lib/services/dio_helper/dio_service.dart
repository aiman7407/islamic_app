import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

class DioHelper {
  static late Dio dio;

  static init() {

    //http://api.aladhan.com/v1/timingsByAddress?address=cairo&method=5
    String baseUrl = 'http://api.aladhan.com/v1/';

    dio = Dio(BaseOptions(
        baseUrl: baseUrl,
        receiveDataWhenStatusError: true,
        responseType: ResponseType.plain,
       ));
  }

  static Future<Response> getData({
    required String url,
    Map<String, dynamic>? query,
  }) async {

    return await dio.get(url, queryParameters: query);
  }



}
