import 'package:commerce_app/domain/entities/Auth_result_Entity.dart';
import 'package:dartz/dartz.dart';

import '../../../../data/Api/base_error.dart';

abstract class AuthRepoContract{
  Future<Either<BaseError,AuthResultEntity>> register(
      String name,
      String email,
      String password,
      String rePassword,
      String phone,
      );
}