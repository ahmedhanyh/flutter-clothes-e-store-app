import 'package:flutter/material.dart';
import '../../core/resources/app_colors.dart';

/// Used in LoginView and SignUpView
class Header extends StatelessWidget {
  const Header({super.key, required this.title, required this.subtitle});

  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      spacing: 4,
      children: [
        Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 32,
            color: primaryTextColor,
          ),
        ),
        Text(
          subtitle,
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 16,
            color: secondaryTextColor,
          ),
        ),
      ],
    );
  }
}