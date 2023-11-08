import 'package:commerce_app/data/repository/auth_repo/Repository/auth_repo_impl.dart';
import 'package:commerce_app/domain/useCase/register_use_case.dart';

import 'package:commerce_app/ui/auth/Register_screen/cubit/states.dart';
import 'package:commerce_app/ui/auth/Register_screen/cubit/register_screen_view_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


import '../../MyTheme.dart';
import '../../components/AuthForm.dart';
import '../../dialog_utils.dart';
import '../Login/login_screen.dart';

class RegisterScreen extends StatefulWidget {
  static const String routeName = 'register';

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  var viewModel = RegisterScreenViewModel(registerUseCase: injectRegisterUseCase());

  @override
  Widget build(BuildContext context) {
    return BlocListener<RegisterScreenViewModel, RegisterStates>(
      bloc: viewModel,
      listener: (context, state) {
        if (state is RegisterLoadingState) {
          DialogUtils.showLoading(context, state.message ?? 'Waiting');
        } else if (state is RegisterErrorState) {
          DialogUtils.hideDialog(context);
          DialogUtils.showMessage(context, state.message!);
        } else if (state is RegisterSuccessState) {
          DialogUtils.hideDialog(context);
          DialogUtils.showMessage(context, state.response.userEntity?.name??'');
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
                  vertical: MediaQuery.of(context).size.height * 0.02),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Image.asset('assets/Route_Title.png'),

                    ///logo
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                    Text(
                      'Full Name',
                      style: Theme.of(context)
                          .textTheme
                          .titleSmall!
                          .copyWith(color: MyTheme.whiteColor),
                    ), //fullname
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),

                    ///
                    AuthForm(
                        hintText: 'enter your full name',
                        validator: (text) {
                          if (text == null || text.trim().isEmpty) {
                            return 'please enter your name';
                          }
                          return null;
                        },
                        controller: viewModel.fullNameController),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    Text(
                      'Mobile Number',
                      style: Theme.of(context)
                          .textTheme
                          .titleSmall!
                          .copyWith(color: MyTheme.whiteColor),
                    ),

                    ///phone
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                    AuthForm(
                        hintText: 'enter your mobile no.',
                        validator: (text) {
                          if (text == null || text.trim().isEmpty) {
                            return 'please enter Phone number';
                          }
                          bool emailValid = (text.length == 11);
                          if (!emailValid) {
                            return 'please enter valid Phone number';
                          }
                          return null;
                        },
                        KeybordType: TextInputType.phone,
                        controller: viewModel.phoneNumberController),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    Text(
                      'E-mail address',
                      style: Theme.of(context)
                          .textTheme
                          .titleSmall!
                          .copyWith(color: MyTheme.whiteColor),
                    ), //email
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                    AuthForm(
                        hintText: 'enter your email address',
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
                        controller: viewModel.emailController,
                        KeybordType: TextInputType.emailAddress),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    Text(
                      'Password',
                      style: Theme.of(context)
                          .textTheme
                          .titleSmall!
                          .copyWith(color: MyTheme.whiteColor),
                    ), //password
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
                      isPassword: true,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    Text(
                      'Confirm Password',
                      style: Theme.of(context)
                          .textTheme
                          .titleSmall!
                          .copyWith(color: MyTheme.whiteColor),
                    ),

                    ///repasword
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                    AuthForm(
                      hintText: 'confirm your password',
                      validator: (text) {
                        if (text == null || text.trim().isEmpty) {
                          return 'please enter password';
                        }
                        if (text != viewModel.passwordController.text) {
                          return 'passwords are not the same';
                        }
                        return null;
                      },
                      controller: viewModel.rePasswordController,
                      isPassword: true,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                    InkWell(
                      onTap: () {
                        viewModel.register();
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
                            'Sign Up',
                            style: Theme.of(context).textTheme.titleMedium,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ), //signup
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
                                  context, LoginScreen.routeName);
                            },
                            child: Text(
                              'Login',
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
      ),
    );
  }
}
