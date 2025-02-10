import 'package:testing/domain/entites/RegisterRepositoryEntity.dart';

/// message : "success"
/// user : {"name":"Ahmed Abd Al-Muti","email":"monaeem404@gmail.com","role":"user"}
/// token : "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjY3YTY5ZWY4ZmE3ODk1ZTgxZjFjNzg3YiIsIm5hbWUiOiJBaG1lZCBBYmQgQWwtTXV0aSIsInJvbGUiOiJ1c2VyIiwiaWF0IjoxNzM4OTcyOTIwLCJleHAiOjE3NDY3NDg5MjB9.juegSh2l888BtvgI8-eKJJkoqYKHguUxP624aC-mEjQ"

class RegisterResponseDm extends RegisterRepositoryEntity{
  RegisterResponseDm({
      super.message,
      super.user,
      super.token,
      super.statusMsg
  });

  RegisterResponseDm.fromJson(dynamic json) {
    statusMsg = json['statusMsg'];
    message = json['message'];
    user = json['user'] != null ? UserDm.fromJson(json['user']) : null;
    token = json['token'];
  }


  // Map<String, dynamic> toJson() {
  //   final map = <String, dynamic>{};
  //   map['statusMsg'] = statusMsg;
  //   map['message'] = message;
  //   if (user != null) {
  //     map['user'] = user?.toJson();
  //   }
  //   map['token'] = token;
  //   return map;
  // }

}

/// name : "Ahmed Abd Al-Muti"
/// email : "monaeem404@gmail.com"
/// role : "user"

class UserDm extends UserEntity{
  UserDm({
      super.name,
      super.email,
      this.role,

  });

  UserDm.fromJson(dynamic json) {
    name = json['name'];
    email = json['email'];
    role = json['role'];
  }

  String? role;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['email'] = email;
    map['role'] = role;
    return map;
  }

}