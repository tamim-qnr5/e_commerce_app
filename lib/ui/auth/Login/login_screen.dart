import 'package:commerce_app/ui/auth/Login/cubit/login_screen_view_model.dart';
import 'package:commerce_app/ui/home/Home_Screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';



import '../../../domain/useCase/login_use_case.dart';
import '../../MyTheme.dart';
import '../../components/AuthForm.dart';
import '../../dialog_utils.dart';
import '../Register_screen/Register_screen.dart';
import 'cubit/states.dart';

class LoginScreen extends StatefulWidget {
  static const String routeName = 'login';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  var viewModel = LoginScreenViewModel(loginUseCase: injectLoginUseCase());
  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginScreenViewModel, LoginStates>(
      bloc: viewModel,
      listener: (context, state) {
        if (state is LoginLoadingState) {
          DialogUtils.showLoading(context, state.message ?? 'Waiting');
        } else if (state is LoginErrorState) {
          DialogUtils.hideDialog(context);
          DialogUtils.showMessage(context, state.message!);
        } else if (state is LoginSuccessState) {
          DialogUtils.hideDialog(context);
          DialogUtils.showMessage(context, state.response.userEntity?.name??'',
              posActionName: 'ok',
              posAction: (){
            Navigator.pushReplacementNamed(context, HomeScreen.routeName);
              });
        } else {
          Container();
        }
      },
      child: Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        body: Form(
            key: viewModel.formKey,
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: 15.0,
                  vertical: MediaQuery.of(context).size.height * 0.1),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Image.asset('assets/Route_Title.png'),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.05,
                    ),
                    Text('Welcome Back To Route',
                        style: TextStyle(
                            color: MyTheme.whiteColor,
                            fontWeight: FontWeight.w500,
                            fontSize: 24)),
                    Text(
                      'Please sign in with your mail',
                      style: TextStyle(
                          color: MyTheme.whiteColor,
                          fontWeight: FontWeight.w200,
                          fontSize: 16),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.05,
                    ),
                    Text(
                      'User name',
                      style: Theme.of(context)
                          .textTheme
                          .titleSmall!
                          .copyWith(color: MyTheme.whiteColor),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                    AuthForm(
                        hintText: 'enter your emil',
                        validator: (text) {
                          if (text == null || text.trim().isEmpty) {
                            return 'please enter email address';
                          }
                          bool emailValid = RegExp(
                              r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
                              .hasMatch(text);
                          if (!emailValid) {
                            return 'please enter valid email address';
                          }
                          return null;
                        },
                        KeybordType: TextInputType.emailAddress,
                        controller: viewModel.emailController),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.05,
                    ),
                    Text(
                      'Password',
                      style: Theme.of(context)
                          .textTheme
                          .titleSmall!
                          .copyWith(color: MyTheme.whiteColor),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                    AuthForm(
                        hintText: 'enter your password',
                        validator: (text) {
                          if (text == null || text.trim().isEmpty) {
                            return 'please enter password';
                          }
                          return null;
                        },
                        controller: viewModel.passwordController,
                        isPassword: true),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.03,
                    ),
                    InkWell(
                      onTap: () {
                        viewModel.login();
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 15.0),
                        child: Container(
                          width: double.infinity,
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              color: MyTheme.whiteColor,
                              borderRadius: BorderRadius.circular(10)),
                          child: Text(
                            'Log In',
                            style: Theme.of(context).textTheme.titleMedium,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Have Account ?',
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium!
                              .copyWith(color: MyTheme.whiteColor),
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.pushReplacementNamed(
                                  context, RegisterScreen.routeName);
                            },
                            child: Text(
                              'Create Account',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall!
                                  .copyWith(color: MyTheme.whiteColor),
                            ))
                      ],
                    )
                  ],
                ),
              ),
            )),
      )
    );


  }
}
