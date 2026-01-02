import 'package:clothes_e_shop/core/resources/app_colors.dart';
import 'package:flutter/material.dart';
import '../widgets/custom_input_field.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            spacing: 20,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                spacing: 4,
                children: [
                  Text(
                    "Login to your account",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 32,
                      color: primaryTextColor,
                    ),
                  ),
                  Text(
                    "It's great to see you again.",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: secondaryTextColor,
                    ),
                  ),
                ],
              ),
              CustomInputField(label: "Username"),
              CustomInputField(label: "Password", isPassword: true),
            ],
          ),
        ),
      ),
    );
  }
}