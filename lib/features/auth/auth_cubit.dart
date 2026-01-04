// import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:iti_final_project/core/network/dio_helper.dart';
// import 'package:iti_final_project/core/network/end_points.dart';
// import 'package:iti_final_project/core/resources/cache_helper.dart';
// import 'package:iti_final_project/models/user_model.dart';
//
// part '../login/auth_state.dart';
//
// class AuthCubit extends Cubit<AuthState> {
//   AuthCubit() : super(AuthInitial());
//   TextEditingController userNameControl = TextEditingController();
//   TextEditingController passwordControl = TextEditingController();
//   Future<void> login() async {
//     try {
//       emit(LoginLoading());
//       final Response response = await DioHelper.postRequest(
//           endPoint: AppEndPoints.login,
//           data: {
//             "username": userNameControl.text,
//             "password": passwordControl.text
//           });
//       if (response.statusCode == 200 || response.statusCode == 201) {
//         UserModel model = UserModel.fromJson(response.data);
//         print("=================${response.statusCode}");
//
//         if (model.token != null) {
//           await CacheHelper.saveToken(model.token!);
//         } else {
//           emit(LoginFailure("No Token Found"));
//         }
//         emit(LoginSuccess());
//         print("=================${model.token}");
//       } else {
//         emit(LoginFailure(response.data.toString()));
//       }
//     } on DioException catch (e) {
//       emit(LoginFailure(e.message ?? ""));
//     } catch (e) {
//       emit(LoginFailure(e.toString()));
//     }
//   }
// }
