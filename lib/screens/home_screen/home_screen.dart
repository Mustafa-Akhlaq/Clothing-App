import 'package:ecommerce_app/customWidget/bottom_navigation.dart';
import 'package:ecommerce_app/screens/mens_screen/mens_screen.dart';
import 'package:ecommerce_app/screens/womens_screen/womens_screen.dart';
import 'package:ecommerce_app/utils/theme_color.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const MensScreen(),
                          ));
                    },
                    child: Stack(children: [
                      Image.asset("assets/images/HM.jpg"),
                      Positioned(
                          top: 150,
                          left: 35,
                          child: Text(
                            "MEN'S WEAR",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: themeColor(),
                            ),
                          )),
                    ]),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const WomensScreen()));
                    },
                    child: Stack(children: [
                      Image.asset("assets/images/HW.jpg"),
                      Positioned(
                          top: 80,
                          right: 40,
                          child: Text(
                            "WOMEN'S WEAR",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: themeColor(),
                            ),
                          )),
                    ]),
                  ),
                ],
              ),
            ),
            const Align(
                alignment: Alignment.bottomCenter,
                child: BottNavigation(bottomIndex: 0))
          ],
        ),
      ),
    );
  }
}
