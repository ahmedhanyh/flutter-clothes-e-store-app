import 'package:animated_snack_bar/animated_snack_bar.dart';
import 'package:clothes_e_shop/core/resources/snack_bar.dart';
import 'package:clothes_e_shop/features/home/view.dart';
import 'package:clothes_e_shop/features/sign_up/state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import '../login/view.dart';
import '../widgets/header.dart';
import '../widgets/custom_input_field.dart';
import '../widgets/footer.dart';
import '../../core/resources/app_colors.dart';
import 'cubit.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => RegisterCubit(),
      child: BlocConsumer<RegisterCubit, RegisterState>(
        listener: (context, state) {
          if (state is RegisterSuccess) {
            mySnackBar(msg: "Registration Successful!", type: AnimatedSnackBarType.success, context: context);
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
              return HomeView();
            }));
          } else if (state is RegisterFailure) {
            mySnackBar(msg: state.errorMessage, type: AnimatedSnackBarType.error, context: context);
          }
        },
        builder: (context, state) {
          final cubit = context.read<RegisterCubit>();
          if (state is RegisterLoading) {
            return Scaffold(
              body: Center(
                child: Lottie.asset("assets/animations/loading.json"),
              ),
            );
          }
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
                      label: "Email",
                      hintText: "Enter your email",
                      controller: cubit.emailController,
                    ),
                    CustomInputField(
                      label: "Username",
                      hintText: "Enter your username",
                      controller: cubit.usernameController,
                    ),
                    CustomInputField(
                      label: "Password",
                      hintText: "Enter your password",
                      controller: cubit.passwordController,
                      isPassword: true,
                    ),
                    CustomInputField(
                      label: "Confirm Password",
                      hintText: "Enter your password",
                      controller: cubit.passwordConfirmationController,
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
                      onPressed: () {
                        cubit.register();
                      },
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
                          destination: LoginView(),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        }
      ),
    );
  }
}
