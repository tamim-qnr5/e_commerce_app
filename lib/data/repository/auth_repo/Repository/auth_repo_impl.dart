import 'package:commerce_app/data/models/response/RegisterResponse.dart';
import 'package:commerce_app/domain/repository/auth_repository/dataSource/auth_remote_data_source.dart';
import 'package:commerce_app/domain/repository/auth_repository/repository/auth_repo_contract.dart';
import 'package:commerce_app/data/repository/auth_repo/dataSource/auth_remote_data_source_impl.dart';
import 'package:dartz/dartz.dart';

import '../../../../domain/entities/Auth_result_Entity.dart';
import '../../../Api/base_error.dart';

class AuthRepoImpl implements AuthRepoContract{
  AuthRemoteDataSource authRemoteDataSource;
  AuthRepoImpl({required this.authRemoteDataSource});

  @override
  Future<Either<BaseError,AuthResultEntity>> register(String name, String email, String password, String rePassword, String phone) {
    var response = authRemoteDataSource.register(name, email, password, rePassword, phone);
    return response;
  }

}
AuthRepoContract injectAuthRepoContract(){
  return AuthRepoImpl(authRemoteDataSource: injectAuthRemoteDataSource());
}