class WalletResponseModel {
  WalletResponseModel({
    required this.responseCode,
    required this.message,
    required this.data,
  });
  late final int responseCode;
  late final String message;
  late final List<Data> data;
  
  WalletResponseModel.fromJson(Map<String, dynamic> json){
    responseCode = json['responseCode'];
    message = json['message'];
    data = List.from(json['data']).map((e)=>Data.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['responseCode'] = responseCode;
    _data['message'] = message;
    _data['data'] = data.map((e)=>e.toJson()).toList();
    return _data;
  }
}

class Data {
  Data({
    required this.id,
    required this.key,
    required this.address,
    required this.createdAt,
    required this.updatedAt,
  });
  late final int id;
  late final String key;
  late final String address;
  late final String createdAt;
  late final String updatedAt;
  
  Data.fromJson(Map<String, dynamic> json){
    id = json['id'];
    key = json['key'];
    address = json['address'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['key'] = key;
    _data['address'] = address;
    _data['createdAt'] = createdAt;
    _data['updatedAt'] = updatedAt;
    return _data;
  }
}