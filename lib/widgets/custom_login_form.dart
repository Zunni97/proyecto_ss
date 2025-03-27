import 'package:flutter/material.dart';
import 'package:ss2025/colors.dart';

class CustomLoginForm extends StatelessWidget {
  final String text;
  final TextEditingController controller;
  final bool obscureText;
  const CustomLoginForm(
      {required this.text,
      required this.controller,
      this.obscureText = false,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
        ),
        SizedBox(
          width: 370,
          child: TextField(
            obscureText: obscureText,
            controller: controller,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(12),
                      ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.secondary),
                borderRadius: BorderRadius.circular(12),
                      ),
              fillColor: Colors.white,
              filled: true,
                    ),
          ),
        ),
      ],
    );
  }
}


