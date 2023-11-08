
import 'package:dartz/dartz.dart';

import '../../data/Api/base_error.dart';
import '../../data/repository/auth_repo/Repository/auth_repo_impl.dart';
import '../entities/Auth_result_Entity.dart';
import '../repository/auth_repository/repository/auth_repo_contract.dart';

class LoginUseCase{
AuthRepoContract repoContract;
LoginUseCase({required this.repoContract});
Future<Either<BaseError,AuthResultEntity>> invoke(String email, String password,) async {
  var either =  await repoContract.login(email, password,);
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
injectLoginUseCase(){
  return LoginUseCase(repoContract:  injectAuthRepoContract());
}