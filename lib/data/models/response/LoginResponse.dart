import 'package:commerce_app/data/models/response/UserDto.dart';

import '../../../domain/entities/Auth_result_Entity.dart';
import 'Error.dart';

/// message : "success"
/// user : {"name":"Tamim Alhager","email":"tamim.qnr5@gmail.com","role":"user"}
/// token : "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjY1NDFhY2I1MTgzMDEzYzBlYjVjNGExMCIsIm5hbWUiOiJUYW1pbSBBbGhhZ2VyIiwicm9sZSI6InVzZXIiLCJpYXQiOjE2OTk0MDQyOTksImV4cCI6MTcwNzE4MDI5OX0.lX4Z402L51sBqLMof1PTru9g-cdFuF7JvyuzFLF9BuI"

class LoginResponse {
  LoginResponse({
    this.message,
    this.statusMsg,
    this.user,
    this.token,
  });

  LoginResponse.fromJson(dynamic json) {
    message = json['message'];
    statusMsg = json['statusMsg'];
    user = json['user'] != null ? UserDto.fromJson(json['user']) : null;
    token = json['token'];
  }
  String? message;
  UserDto? user;
  String? token;
  MyError? error;
  String? statusMsg;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['message'] = message;
    map['statusMsg'] = statusMsg;
    if (user != null) {
      map['user'] = user?.toJson();
    }
    map['token'] = token;
    return map;
  }
  toAuthResultEntity(){
    return AuthResultEntity(userEntity: user?.toUserEntity(), token: token);
  }
}

/// name : "Tamim Alhager"
/// email : "tamim.qnr5@gmail.com"
/// role : "user"
