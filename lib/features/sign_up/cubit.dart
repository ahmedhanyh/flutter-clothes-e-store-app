import 'package:clothes_e_shop/core/resources/app_endpoints.dart';
import 'package:clothes_e_shop/core/resources/cache_helper.dart';
import 'package:clothes_e_shop/core/resources/dio_helper.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

import '../../models/user_model.dart';
import './state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit() : super(RegisterInitial());

  TextEditingController usernameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController passwordConfirmationController = TextEditingController();

  void register() async {
    try {
      emit(RegisterLoading());
      Response response = await DioHelper.postRequest(
          endPoint: AppEndPoints.users, data: {
        "username": usernameController.text,
        "email": emailController.text,
        "password": passwordController.text,
      });
      print(response);
      if (response.statusCode == 200 || response.statusCode == 201) {
        emit(RegisterSuccess());
        // Response loginResponse = await DioHelper.postRequest(endPoint: AppEndPoints.login, data: {
        //   "username": usernameController.text,
        //   "password": passwordController.text
        // });
        // if (loginResponse.statusCode == 200 || loginResponse.statusCode == 201) {
        //   UserModel userModel = UserModel.fromJson(loginResponse.data);
        //   if (userModel.token != null) {
        //     await CacheHelper.saveToken(userModel.token!);
        //     emit(RegisterSuccess());
        //   } else {
        //     emit(RegisterFailure("No token found."));
        //   }
        // } else {
        //   emit(RegisterFailure("Couldn't complete registration."));
        // }
      } else {
        emit(RegisterFailure("Couldn't complete registration."));
      }
    } on DioException catch(e) {
      emit(RegisterFailure(e.response!.data.toString()));
    } catch(e) {
      emit(RegisterFailure(e.toString()));
    }
  }
}