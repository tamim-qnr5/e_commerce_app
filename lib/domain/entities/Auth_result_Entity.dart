

import 'UserEntity.dart';

class AuthResultEntity {
  UserEntity? userEntity;
  String? token;

  AuthResultEntity({required this.userEntity, required this.token});
}
