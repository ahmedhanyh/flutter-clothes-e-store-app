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
              CustomInputField(label: "Username"),
              CustomInputField(label: "Password", isPassword: true),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Footer(
                    firstPart: "Don't have an account? ",
                    secondPart: "Join",
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