

import 'package:commerce_app/data/models/response/Error.dart';
import 'package:commerce_app/domain/entities/Auth_result_Entity.dart';

import 'UserDto.dart';

/// message : "success"
/// user : {"name":"Tamim Alhager","email":"tamim@route.com","role":"user"}
/// token : "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjY1NDE5NTk4MTgzMDEzYzBlYjViY2ViNyIsIm5hbWUiOiJUYW1pbSBBbGhhZ2VyIiwicm9sZSI6InVzZXIiLCJpYXQiOjE2OTg3OTY5NTMsImV4cCI6MTcwNjU3Mjk1M30.8RreTM0hxnRmZ0yE3GLaGK6Su0kSpI8RXElCnP7hMaA"

class RegisterResponse {
  RegisterResponse({
    this.message,
    this.user,
    this.token,
    this.error,
    this.statusMsg});

  RegisterResponse.fromJson(dynamic json) {
    message = json['message'];
    statusMsg = json['statusMsg'];
    user = json['user'] != null ? UserDto.fromJson(json['user']) : null;
    token = json['token'];
    error = json['errors'];
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
    map['errors'] = error;
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
