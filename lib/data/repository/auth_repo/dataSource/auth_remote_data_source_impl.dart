import 'package:commerce_app/data/Api/Api_Maneger.dart';
import 'package:commerce_app/data/Api/base_error.dart';
import 'package:commerce_app/data/models/response/RegisterResponse.dart';
import 'package:commerce_app/domain/entities/Auth_result_Entity.dart';
import 'package:commerce_app/domain/repository/auth_repository/dataSource/auth_remote_data_source.dart';
import 'package:dartz/dartz.dart';

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource{
  ApiManager apiManager;
  AuthRemoteDataSourceImpl({required this.apiManager});

  @override
  Future<Either<BaseError,AuthResultEntity>> register(String name, String email, String password, String rePassword, String phone)
  async {
    var either= await apiManager.register(name, email, password, rePassword, phone);
    return either.fold(
            (l)  {
              return Left(BaseError(errorMessage: l.errorMessage));
    },
            (response)  {
              return Right(response.toAuthResultEntity());
    }
    );
  }

  @override
  Future<Either<BaseError, AuthResultEntity>> login(String email, String password) async {
    var either= await apiManager.login(email, password);
    return either.fold(
            (l)  {
          return Left(BaseError(errorMessage: l.errorMessage));
        },
            (response)  {
          return Right(response.toAuthResultEntity());
        }
    );
  }
}
AuthRemoteDataSource injectAuthRemoteDataSource(){
  return AuthRemoteDataSourceImpl(apiManager: ApiManager.getApiManagerInstance());
}