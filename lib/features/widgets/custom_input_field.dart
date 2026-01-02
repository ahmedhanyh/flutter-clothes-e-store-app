import 'package:flutter/material.dart';

import '../../core/resources/app_colors.dart';

class CustomInputField extends StatefulWidget {
  const CustomInputField({
    super.key,
    required this.label,
    required this.hintText,
    this.isPassword = false,
  });

  final String label;
  final String hintText;
  final bool isPassword;

  @override
  State<CustomInputField> createState() => _CustomInputFieldState();
}

class _CustomInputFieldState extends State<CustomInputField> {
  var hide;

  void initState() {
    super.initState();
    hide = widget.isPassword ? true : false;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      spacing: 4,
      children: [
        Text(
          widget.label,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 16,
            color: primaryTextColor,
          ),
        ),
        TextFormField(
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade300, width: 1),
              borderRadius: BorderRadius.circular(10),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade400, width: 1),
              borderRadius: BorderRadius.circular(10),
            ),
            hintText: widget.hintText,
            hintStyle: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 16,
              color: hintTextColor,
            ),
            suffixIcon: (widget.isPassword
                ? GestureDetector(
              onTap: () {
                setState(() {
                  hide = !hide;
                });
              },
              child: (hide
                  ? Icon(Icons.remove_red_eye_outlined)
                  : Icon(Icons.remove_red_eye)),
            )
                : SizedBox.shrink()),
          ),
          obscureText: hide,
        ),
      ],
    );
  }
}