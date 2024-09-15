import 'package:ecommerce_app/utils/theme_color.dart';
import 'package:flutter/material.dart';

class UsernameTextfield extends StatelessWidget {
  const UsernameTextfield({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        labelText: "EMAIL",
        labelStyle: TextStyle(color: themeColor(), fontSize: 16),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: themeColor(),
            width: 1.0,
          ),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: themeColor(),
            width: 2.0,
          ),
        ),
      ),
    );
  }
}
