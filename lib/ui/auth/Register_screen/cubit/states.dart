import 'package:commerce_app/data/models/response/RegisterResponse.dart';
import 'package:commerce_app/domain/entities/Auth_result_Entity.dart';

abstract class RegisterStates {}

class RegisterInitialState extends RegisterStates {}

class RegisterErrorState extends RegisterStates {
  String? message;
  RegisterErrorState({required this.message});
}

class RegisterSuccessState extends RegisterStates {
  AuthResultEntity response;
  RegisterSuccessState({required this.response});
}

class RegisterLoadingState extends RegisterStates {
  String? message;
  RegisterLoadingState({required this.message});
}
