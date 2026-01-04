import 'package:clothes_e_shop/core/resources/dio_helper.dart';
import 'package:clothes_e_shop/features/account/logout_dialog_view.dart';
import 'package:clothes_e_shop/features/account/view.dart';
import 'package:clothes_e_shop/features/cart/cart.dart';
import 'package:clothes_e_shop/features/home/view.dart';
import 'package:clothes_e_shop/features/product_details/view.dart';
import 'package:clothes_e_shop/features/spash_screen/view.dart';
import 'package:flutter/material.dart';
import 'features/login/view.dart';
import 'features/sign_up/view.dart';

void main() {
  DioHelper.initDio();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Clothes E-Shop',
      theme: ThemeData(
        fontFamily: "ReadexPro",
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      debugShowCheckedModeBanner: false,
      home: const HomeView(),
    );
  }
}
