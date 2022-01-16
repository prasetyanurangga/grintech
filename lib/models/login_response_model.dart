class LoginResponseModel {
  LoginResponseModel({
    required this.responseCode,
    required this.message,
    required this.tokenTeknisi,
    required this.token,
    required this.profile,
    required this.menu,
  });
  late final int responseCode;
  late final String message;
  late final String tokenTeknisi;
  late final String token;
  late final Profile profile;
  late final List<Menu> menu;
  
  LoginResponseModel.fromJson(Map<String, dynamic> json){
    responseCode = json['responseCode'];
    message = json['message'];
    tokenTeknisi = json['token_teknisi'];
    token = json['token'];
    profile = Profile.fromJson(json['profile']);
    menu = List.from(json['menu']).map((e)=>Menu.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['responseCode'] = responseCode;
    _data['message'] = message;
    _data['token_teknisi'] = tokenTeknisi;
    _data['token'] = token;
    _data['profile'] = profile.toJson();
    _data['menu'] = menu.map((e)=>e.toJson()).toList();
    return _data;
  }
}

class Profile {
  Profile({
    required this.id,
    required this.email,
     this.adminId,
     this.amId,
     this.lnId,
    required this.teknisiId,
     this.adminTeknisiId,
    required this.isVerify,
     this.pin,
    required this.createdAt,
    required this.updatedAt,
  });
  late final int id;
  late final String email;
  late final Null adminId;
  late final Null amId;
  late final Null lnId;
  late final int teknisiId;
  late final Null adminTeknisiId;
  late final bool isVerify;
  late final Null pin;
  late final String createdAt;
  late final String updatedAt;
  
  Profile.fromJson(Map<String, dynamic> json){
    id = json['id'];
    email = json['email'];
    adminId = null;
    amId = null;
    lnId = null;
    teknisiId = json['teknisi_id'];
    adminTeknisiId = null;
    isVerify = json['is_verify'];
    pin = null;
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['email'] = email;
    _data['admin_id'] = adminId;
    _data['am_id'] = amId;
    _data['ln_id'] = lnId;
    _data['teknisi_id'] = teknisiId;
    _data['admin_teknisi_id'] = adminTeknisiId;
    _data['is_verify'] = isVerify;
    _data['pin'] = pin;
    _data['createdAt'] = createdAt;
    _data['updatedAt'] = updatedAt;
    return _data;
  }
}

class Menu {
  Menu({
    required this.link,
    required this.name,
    required this.icon,
  });
  late final String link;
  late final String name;
  late final String icon;
  
  Menu.fromJson(Map<String, dynamic> json){
    link = json['link'];
    name = json['name'];
    icon = json['icon'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['link'] = link;
    _data['name'] = name;
    _data['icon'] = icon;
    return _data;
  }
}