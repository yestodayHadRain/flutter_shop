import 'package:dio/dio.dart';
import 'dart:async';
import 'dart:io';
import '../config/service_url.dart';


Future getHomePageContent() async{
  try{
    // Dio dio = new Dio();
    // Response response;
    // dio.options.contentType = ContentType.parse("application/x-www.form-urlencode");
    // // dio.options.contentType = ContentType.parse("application/json");
    // // dio.options.headers = servicePath['headers'];
    // var formData = {'lon':'115.12022', 'lat':'35.12331'};
    // response = await dio.post(servicePath['homePageContext'], data: formData);
    // // response = await dio.post(servicePath['homePageContext']);
    // print("response数据: $response");
    // if(response.statusCode == 200){
    //   return response.data;
    // } else {
    //   throw Exception('后端接口调用异常');
    // }
    return dataList;
  } catch(e){
    return print(e);
  }
}