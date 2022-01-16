import 'package:grintech/models/wallet_response_model.dart';
import 'package:grintech/models/login_response_model.dart';
import 'package:grintech/providers/response_data.dart';
import 'package:grintech/providers/api_provider.dart';
import 'package:dio/dio.dart';
import 'dart:async';

class MainRepository{
  ApiProvider _apiProvider = ApiProvider();

  Future<ResponseData> getLogin(Map<String, String> data) async{
  	Response response = await _apiProvider.getLogin(data);
  	LoginResponseModel responseJust = LoginResponseModel.fromJson(response.data);
  	if (responseJust == null) {
      return ResponseData.connectivityError();
    }

    if (response.statusCode == 200) {
      return ResponseData.success(responseJust);
    } else {
      return ResponseData.error("Error");
    }
  }

  Future<ResponseData> getWalletList(String token) async{
    Response response = await _apiProvider.getWalletList(token);
    WalletResponseModel responseJust = WalletResponseModel.fromJson(response.data);
    if (responseJust == null) {
      return ResponseData.connectivityError();
    }

    if (response.statusCode == 200) {
      return ResponseData.success(responseJust.data);
    } else {
      return ResponseData.error("Error");
    }
  }
}