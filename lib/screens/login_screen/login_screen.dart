import 'package:ecommerce_app/customWidget/password_textfield.dart';
import 'package:ecommerce_app/customWidget/username_textfield.dart';
import 'package:ecommerce_app/utils/theme_color.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.close_outlined,
                      color: themeColor(),
                      size: 30,
                    ),
                  ),
                  const Spacer(),
                  Icon(
                    Icons.textsms_outlined,
                    color: themeColor(),
                    size: 25,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Icon(
                    Icons.settings_outlined,
                    color: themeColor(),
                    size: 30,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 25,
                  ),
                  Text(
                    "SIGN IN TO YOUR ACCOUNT",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: themeColor(),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const Row(
                children: [
                  SizedBox(
                    width: 25,
                  ),
                  SizedBox(
                    width: 340,
                    child: UsernameTextfield(),
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              const Row(
                children: [
                  SizedBox(
                    width: 25,
                  ),
                  SizedBox(
                    width: 340,
                    child: PasswordTextfield(),
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              Container(
                height: 1,
                width: 340,
                color: themeColor(),
              ),
              SizedBox(
                width: 340,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero,
                    ),
                  ),
                  child: Text(
                    'LOG IN',
                    style: TextStyle(
                      fontWeight: FontWeight.w300,
                      color: themeColor(),
                      fontSize: 16,
                      letterSpacing: 1.5,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "Forgot your password?",
                        style: TextStyle(
                          color: themeColor(),
                        ),
                      )),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 30,
                  ),
                  Text(
                    "DO YOU NEED AN ACCOUNT?",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w300,
                      color: themeColor(),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 1,
                width: 340,
                color: themeColor(),
              ),
              SizedBox(
                width: 340,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero,
                    ),
                  ),
                  child: Text(
                    'REGISTER',
                    style: TextStyle(
                      fontWeight: FontWeight.w300,
                      color: themeColor(),
                      fontSize: 16,
                      letterSpacing: 1.5,
                    ),
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
