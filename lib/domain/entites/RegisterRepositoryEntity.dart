/// message : "success"
/// user : {"name":"Ahmed Abd Al-Muti","email":"monaeem404@gmail.com","role":"user"}
/// token : "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjY3YTY5ZWY4ZmE3ODk1ZTgxZjFjNzg3YiIsIm5hbWUiOiJBaG1lZCBBYmQgQWwtTXV0aSIsInJvbGUiOiJ1c2VyIiwiaWF0IjoxNzM4OTcyOTIwLCJleHAiOjE3NDY3NDg5MjB9.juegSh2l888BtvgI8-eKJJkoqYKHguUxP624aC-mEjQ"

class RegisterRepositoryEntity {
  RegisterRepositoryEntity({
      this.message, 
      this.user,
      this.statusMsg,
      this.token,});

  // RegisterRepositoryEntity.fromJson(dynamic json) {
  //   message = json['message'];
  //   user = json['user'] != null ? UserEntity.fromJson(json['user']) : null;
  //   token = json['token'];
  // }
  String? statusMsg;
  String? message;
  UserEntity? user;
  String? token;

  // Map<String, dynamic> toJson() {
  //   final map = <String, dynamic>{};
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

class UserEntity {
  UserEntity({
      this.name, 
      this.email, 
      // this.role,
  });

  // UserEntity.fromJson(dynamic json) {
  //   name = json['name'];
  //   email = json['email'];
  //   role = json['role'];
  // }
  String? name;
  String? email;
  // String? role;

  // Map<String, dynamic> toJson() {
  //   final map = <String, dynamic>{};
  //   map['name'] = name;
  //   map['email'] = email;
  //   map['role'] = role;
  //   return map;
  // }

}