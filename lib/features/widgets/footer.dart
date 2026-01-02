import 'package:flutter/material.dart';
import '../../core/resources/app_colors.dart';

/// Used in LoginView and SignUpView
class Footer extends StatelessWidget {
  const Footer({super.key, required this.firstPart, required this.secondPart});

  final String firstPart;
  final String secondPart;

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        text: firstPart,
        style: TextStyle(
          fontFamily: "ReadexPro",
          fontWeight: FontWeight.w400,
          fontSize: 16,
          color: secondaryTextColor,
        ),
        children: [
          TextSpan(
            text: secondPart,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              color: primaryTextColor,
            ),
          ),
        ],
      ),
    );
  }
}