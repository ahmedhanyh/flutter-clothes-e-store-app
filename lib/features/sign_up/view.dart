import 'package:flutter/material.dart';
import '../widgets/header.dart';
import '../widgets/custom_input_field.dart';
import '../widgets/footer.dart';
import '../../core/resources/app_colors.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

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
                title: "Create an account",
                subtitle: "Let’s create your account.",
              ),
              CustomInputField(
                label: "Full Name",
                hintText: "Enter your full name",
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
              CustomInputField(
                label: "Confirm Password",
                hintText: "Enter your password",
                isPassword: true,
              ),
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
                  "Create Account",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                ),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Footer(
                    firstPart: "Already have an account? ",
                    secondPart: "Log In",
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
