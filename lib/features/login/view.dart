import 'package:clothes_e_shop/core/resources/app_colors.dart';
import 'package:clothes_e_shop/features/sign_up/view.dart';
import 'package:flutter/material.dart';
import '../widgets/header.dart';
import '../widgets/custom_input_field.dart';
import '../widgets/footer.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            spacing: 20,
            children: [
              Header(
                title: "Login to your account",
                subtitle: "It's great to see you again.",
              ),
              CustomInputField(
                label: "Username",
                hintText: "Enter your username",
              ),
              CustomInputField(
                label: "Password",
                hintText: "Enter your password",
                isPassword: true,
              ),
              SizedBox(height: 10),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: primaryColor,
                  foregroundColor: Colors.white,
                  padding: EdgeInsets.fromLTRB(0, 16, 0, 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  "Sign In",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                ),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Footer(
                    firstPart: "Don't have an account? ",
                    secondPart: "Join",
                    destination: SignUpView(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
