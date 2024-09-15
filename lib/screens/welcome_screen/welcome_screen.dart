import 'package:ecommerce_app/screens/home_screen/home_screen.dart';
import 'package:ecommerce_app/utils/theme_color.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 400,
                  width: 180,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      image: const DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage("assets/images/Jackets13.jpg"))),
                ),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  children: [
                    Container(
                      height: 200,
                      width: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image: const DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage("assets/images/Home2.jpg"))),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Container(
                      height: 200,
                      width: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image: const DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage("assets/images/Blazzer1.jpg"))),
                    )
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              "Unwrap Your Style -                            ",
              style: TextStyle(
                fontWeight: FontWeight.w200,
                color: themeColor(),
                fontSize: 18,
              ),
            ),
            Text(
              "          Fashion at Your Fingertips",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: themeColor()),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 40,
              width: 330,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomeScreen()),
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
                child: const Text("GET STARTED"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
