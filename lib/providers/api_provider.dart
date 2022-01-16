import 'package:dio/dio.dart';
import 'dart:async';
import 'package:grintech/constant/strings.dart';


class ApiProvider{

  Future<Response> getWalletList(String token) async {
    Dio dio = new Dio();
    dio.options.headers["Authorization"] = token;
    String _endpoint = "wallet/cli/list";
    Response response;
    try {
      response = await dio.get(Strings.base_url+_endpoint);
    } on Error catch (e) {
      throw Exception('Failed to load post ' + e.toString());
    }
    return response;
  }

  Future<Response> getLogin(Map<String, String> data) async {
    String _endpoint = "mobile/teknisi/login";
    Response response;
    try {
      response = await Dio().post(
        Strings.base_url+_endpoint,
        data: data, 
        options: Options(contentType: Headers.formUrlEncodedContentType)
      );
    } on Error catch (e) {
      throw Exception('Failed to load post ' + e.toString());
    }
    return response;
  }
}