import 'package:clothes_e_shop/core/resources/app_endpoints.dart';
import 'package:clothes_e_shop/core/resources/cache_helper.dart';
import 'package:clothes_e_shop/core/resources/dio_helper.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

import '../../models/user_model.dart';
import './state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void login() async {
    try {
      emit(LoginLoading());
      Response response = await DioHelper.postRequest(
          endPoint: AppEndPoints.login, data: {
        "username": usernameController.text,
        "password": passwordController.text,
      });
      if (response.statusCode == 200 || response.statusCode == 201) {
        UserModel userModel = UserModel.fromJson(response.data);
        if (userModel.token != null) {
          await CacheHelper.saveToken(userModel.token!);
          emit(LoginSuccess());
        } else {
          emit(LoginFailure("No token found."));
        }
      }
    } on DioException catch(e) {
      emit(LoginFailure(e.response!.data.toString()));
    } catch(e) {
      emit(LoginFailure(e.toString()));
    }
  }
}