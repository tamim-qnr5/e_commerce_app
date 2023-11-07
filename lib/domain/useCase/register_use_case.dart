import 'package:commerce_app/data/repository/auth_repo/Repository/auth_repo_impl.dart';
import 'package:commerce_app/domain/entities/Auth_result_Entity.dart';
import 'package:commerce_app/domain/repository/auth_repository/repository/auth_repo_contract.dart';
import 'package:dartz/dartz.dart';
import '../../data/Api/base_error.dart';
import '../../data/models/response/RegisterResponse.dart';

class RegisterUseCase {
  AuthRepoContract authRepoContract;
  RegisterUseCase({required this.authRepoContract});
  Future<Either<BaseError,AuthResultEntity>> invoke(String name, String email, String password, String rePassword,
      String phone) async {
    var either =  await authRepoContract.register(name, email, password, rePassword, phone);
    return either.fold(
            (l) {
              return Left(BaseError(errorMessage: l.errorMessage));
  },
            (response) {
              return Right(response);
    }
    );
  }
}
injectRegisterUseCase(){
  return RegisterUseCase(authRepoContract: injectAuthRepoContract());
}