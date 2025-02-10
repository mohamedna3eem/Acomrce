import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:testing/apiManager/apiconestant/ApiConstant.dart';
@singleton
class ApiManager{

 Future<Response> getData({required String endPoint,
    Map<String, dynamic>? queryParameters,
    Options? options, Object? body,
    Map<String, dynamic>? headers
  }){
    Dio dio = Dio();
   return dio.get(
      ApiConstant.baseUrl+endPoint,
      queryParameters: queryParameters,
        options:Options(headers: headers) ,
         data: body,
    );

  }

 Future<Response> postData({required String endPoint,
    Map<String, dynamic>? queryParameters,
    Options? options, Object? body,
    Map<String, dynamic>? headers
  }){
    Dio dio = Dio();
  return  dio.post(
      ApiConstant.baseUrl+endPoint,
      queryParameters: queryParameters,
      options:Options(headers: headers) ,
      data: body,
    );

  }



}