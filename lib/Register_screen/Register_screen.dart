import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Login/login_screen.dart';
import '../MyTheme.dart';
import '../components/LoginForm.dart';

class RegisterScreen extends StatefulWidget {
  static const String routeName = 'register';

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  var formKey = GlobalKey<FormState>();

  var emailController = TextEditingController(text: 'tamim.qnr5@gmail.com');

  var passwordController = TextEditingController(text: 'tameem');
  var rePasswordController = TextEditingController(text: 'tameem');

  var fullNameController = TextEditingController(text: 'Tamim Alhager');
  var phoneNumberController = TextEditingController(text: '01113149612');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Form(
          key: formKey,
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: 15.0,
                vertical: MediaQuery.of(context).size.height * 0.02),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Image.asset('assets/Route_Title.png'),///logo
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  Text(
                    'Full Name',
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall!
                        .copyWith(color: MyTheme.whiteColor),
                  ),//fullname
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),///
                  Login_Form(
                      hintText: 'enter your full name',
                      validator: (text) {
                        if (text == null || text.trim().isEmpty) {
                          return 'please enter your name';
                        }
                        return null;
                      },
                      controller: fullNameController),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Text(
                    'Mobile Number',
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall!
                        .copyWith(color: MyTheme.whiteColor),
                  ),///phone
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  Login_Form(
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
                      controller: phoneNumberController),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Text(
                    'E-mail address',
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall!
                        .copyWith(color: MyTheme.whiteColor),
                  ),//email
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  Login_Form(
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
                      controller: emailController,
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
                  ),//password
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  Login_Form(
                    hintText: 'enter your password',
                    validator: (text) {
                      if (text == null || text.trim().isEmpty) {
                        return 'please enter password';
                      }
                      return null;
                    },
                    controller: passwordController,
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
                  ),///repasword
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  Login_Form(
                    hintText: 'confirm your password',
                    validator: (text) {
                      if (text == null || text.trim().isEmpty) {
                        return 'please enter password';
                      }
                      if (text != passwordController.text) {
                        return 'passwords are not the same';
                      }
                      return null;
                    },
                    controller: rePasswordController,
                    isPassword: true,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  InkWell(
                    onTap: () {},
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
                  ),//signup
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
    );
  }
}
