import 'package:ecommerce_app/screens/welcome_screen/welcome_screen.dart';
import 'package:ecommerce_app/utils/theme_color.dart';
import 'package:flutter/material.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 100,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 50,
                  ),
                  Container(
                    width: 100,
                    height: 2,
                    color: themeColor(),
                  ),
                ],
              ),
              const SizedBox(
                height: 100,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 50,
                  ),
                  Text(
                    "  USE OF COOKIES",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: themeColor(),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                '''
        We use first-party and third-party cookies to
        understand the uses of our online store and
        understand the uses of our online store and
        to be able to improve it, adapt the content to
        understand the uses of our online store and
        your preferences and personalize our
        advertisements,marketing and publications on
        social networks.For more information you can
        consult our    Cookie Policy.''',
                style: TextStyle(color: themeColor()),
              ),
              Container(
                height: 1,
                width: 90,
                color: themeColor(),
              ),
              const SizedBox(
                height: 100,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 250,
                  ),
                  Container(
                    width: 100,
                    height: 2,
                    color: themeColor(),
                  ),
                ],
              ),
              const SizedBox(
                height: 130,
              ),
              SizedBox(
                height: 40,
                width: 330,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const WelcomeScreen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: themeColor(),
                    shadowColor: themeColor(),
                    side: BorderSide(color: themeColor(), width: 2),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0),
                    ),
                  ),
                  child: const Text("ACCEPT"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
