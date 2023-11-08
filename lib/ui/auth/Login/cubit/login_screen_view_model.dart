import 'package:commerce_app/domain/useCase/login_use_case.dart';
import 'package:commerce_app/ui/auth/Login/cubit/states.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreenViewModel extends Cubit<LoginStates>
{
  LoginUseCase loginUseCase;
  LoginScreenViewModel({required this.loginUseCase}):super(LoginInitialState());
  var formKey = GlobalKey<FormState>();
  var emailController = TextEditingController(text: 'tamim.qnr5@gmail.com');
  var passwordController = TextEditingController(text: 'tameem');
  Future<void> login() async {
    if (formKey.currentState!.validate() == true){
      emit(LoginLoadingState(message: 'Loading...'));
      var either = await loginUseCase.invoke(emailController.text, passwordController.text);
      either.fold(
              (l) {
            emit(LoginErrorState(message: l.errorMessage));
          },
              (response) {
            emit(LoginSuccessState(response: response));
          }
      );
    }
  }
}
