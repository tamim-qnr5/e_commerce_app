import '../../../../domain/entities/Auth_result_Entity.dart';

abstract class LoginStates {}

class LoginInitialState extends LoginStates {}

class LoginErrorState extends LoginStates {
  String? message;
  LoginErrorState({required this.message});
}

class LoginSuccessState extends LoginStates {
  AuthResultEntity response;
  LoginSuccessState({required this.response});
}

class LoginLoadingState extends LoginStates {
  String? message;
  LoginLoadingState({required this.message});
}
