import 'package:flutter/material.dart';
import 'features/login/view.dart';

void main() {
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
      home: const LoginView(),
    );
  }
}
