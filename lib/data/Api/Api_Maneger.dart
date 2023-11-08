import 'dart:convert';

import 'package:commerce_app/data/Api/Api_const.dart';
import 'package:commerce_app/data/Api/base_error.dart';
import 'package:commerce_app/data/models/request/LoginRequest.dart';
import 'package:commerce_app/data/models/request/RegisterRequest.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;

import '../models/response/RegisterResponse.dart';

class ApiManager {
  ApiManager._();
  static ApiManager? _instance;
  static ApiManager getApiManagerInstance() {
    _instance ??= ApiManager._();
    return _instance!;
  }

  Future<Either<BaseError, LoginResponse>> register(
    String name,
    String email,
    String password,
    String rePassword,
    String phone,
  ) async {
    final connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile ||
        connectivityResult == ConnectivityResult.wifi) {
      Uri url = Uri.https(ApiConst.baseUrl, ApiConst.RegApi);
      var request = RegisterRequest(
        email: email,
        name: name,
        password: password,
        phone: phone,
        rePassword: rePassword,
      );
      var response = await http.post(url, body: request.toJson());
      var registerResponse =
          LoginResponse.fromJson(jsonDecode(response.body));
      if (response.statusCode >= 200 && response.statusCode < 300) {
        return right(registerResponse);
      } else {
        return left(BaseError(
            errorMessage: registerResponse.error != null
                ? registerResponse.error?.msg
                : registerResponse.message));
      }
    } else {
      return left(BaseError(errorMessage: 'Please check connection'));
    }

    ///https://ecommerce.routemisr.com/api/v1/auth/signup
  }

  Future<Either<BaseError, LoginResponse>> login(
      String email,
      String password,
      ) async {
    final connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile ||
        connectivityResult == ConnectivityResult.wifi) {
      Uri url = Uri.https(ApiConst.baseUrl, ApiConst.logApi);
      var request = LoginRequest(
        email: email,
        password: password,
      );
      var response = await http.post(url, body: request.toJson());
      var loginResponse =
      LoginResponse.fromJson(jsonDecode(response.body));
      if (response.statusCode >= 200 && response.statusCode < 300) {
        return right(loginResponse);
      } else {
        return left(BaseError(
            errorMessage       : loginResponse.message));
      }
    } else {
      return left(BaseError(errorMessage: 'Please check connection'));
    }

    ///https://ecommerce.routemisr.com/api/v1/auth/signup
  }
}
