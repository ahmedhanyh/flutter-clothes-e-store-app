import 'package:clothes_e_shop/core/resources/app_endpoints.dart';
import 'package:clothes_e_shop/core/resources/cache_helper.dart';
import 'package:clothes_e_shop/core/resources/dio_helper.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import '../../models/user_model.dart';
import './state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  void init() async {
    try {
      emit(HomeLoading());

      Response categoriesResponse = await DioHelper.getRequest(
          endPoint: AppEndPoints.allCategories,
      );

      List<dynamic> categories = categoriesResponse.data;

      Response productsResponse = await DioHelper.getRequest(
        endPoint: AppEndPoints.allProducts,
      );

      List<dynamic> products = productsResponse.data;

      emit(HomeLoaded(categories: categories, products: products));
    } on DioException catch(e) {
      emit(HomeFailure(e.response!.data.toString()));
    } catch(e) {
      emit(HomeFailure(e.toString()));
    }
  }

  void viewProductDetails() async {
    emit(DetailsLoading());
    emit(DetailsLoaded());
  }
}