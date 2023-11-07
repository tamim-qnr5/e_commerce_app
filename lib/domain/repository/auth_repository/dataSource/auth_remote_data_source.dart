import 'package:commerce_app/data/Api/base_error.dart';
import 'package:commerce_app/domain/entities/Auth_result_Entity.dart';
import 'package:dartz/dartz.dart';

import '../../../../data/models/response/RegisterResponse.dart';

abstract class AuthRemoteDataSource{
  Future<Either<BaseError,AuthResultEntity>> register(
      String name,
      String email,
      String password,
      String rePassword,
      String phone,
      );
}