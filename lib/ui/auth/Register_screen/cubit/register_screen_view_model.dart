import 'package:commerce_app/data/Api/Api_Maneger.dart';
import 'package:commerce_app/ui/auth/Login/cubit/states.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../domain/repository/auth_repository/repository/auth_repo_contract.dart';
import '../../../../domain/useCase/register_use_case.dart';

class RegisterScreenViewModel extends Cubit<RegisterStates> {
  RegisterUseCase registerUseCase;
  RegisterScreenViewModel({required this.registerUseCase})
      : super(RegisterInitialState());
  var formKey = GlobalKey<FormState>();
  var emailController = TextEditingController(text: 'tamim.qnr5@gmail.com');
  var passwordController = TextEditingController(text: 'tameem');
  var rePasswordController = TextEditingController(text: 'tameem');
  var fullNameController = TextEditingController(text: 'Tamim Alhager');
  var phoneNumberController = TextEditingController(text: '01113149612');
  Future<void> register() async {
    if (formKey.currentState!.validate()) {
      emit(RegisterLoadingState(message: 'Loading...'));

      var either = await registerUseCase.invoke(
          fullNameController.text,
          emailController.text,
          passwordController.text,
          rePasswordController.text,
          phoneNumberController.text);
      either.fold(
              (l) {
                emit(RegisterErrorState(message: l.errorMessage));
              },
              (response) {
                emit(RegisterSuccessState(response: response));
              }
      );
    }
  }
}
