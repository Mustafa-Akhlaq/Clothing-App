import 'dart:async';
import 'package:ecommerce_app/customWidget/bottom_navigation.dart';
import 'package:ecommerce_app/customWidget/product_grid.dart';
import 'package:ecommerce_app/data/data.dart';
import 'package:ecommerce_app/utils/theme_color.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

final currencyFormat = NumberFormat.currency();

class WomensScreen extends StatefulWidget {
  const WomensScreen({super.key});

  @override
  State<WomensScreen> createState() => _WomensScreenState();
}

class _WomensScreenState extends State<WomensScreen> {
  final _controller = PageController();
  late Timer _timer;
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();

    _timer = Timer.periodic(const Duration(seconds: 2), (Timer timer) {
      if (_currentPage < 3) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }
      _controller.animateToPage(
        _currentPage,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(vertical: 8),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: BorderSide(color: themeColor()),
                        ),
                        prefixIcon: const Icon(Icons.search),
                        hintText: "Search",
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  CircleAvatar(
                    radius: 20,
                    backgroundColor: themeColor(),
                    child: Badge.count(
                      count: 9,
                      child:
                          const Icon(Icons.notifications, color: Colors.white),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Center(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  height: 130,
                  width: 350,
                  child: PageView(
                    controller: _controller,
                    children: [
                      Image.asset(
                        "assets/images/banner1.jpg",
                        fit: BoxFit.cover,
                      ),
                      Image.asset(
                        "assets/images/banner2.jpg",
                        fit: BoxFit.cover,
                      ),
                      Image.asset(
                        "assets/images/banner4.jpg",
                        fit: BoxFit.cover,
                      ),
                      Image.asset(
                        "assets/images/banner3.jpg",
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Center(
                child: SmoothPageIndicator(
                  controller: _controller,
                  count: 4,
                  effect: SwapEffect(
                    activeDotColor: themeColor(),
                    offset: 16,
                    dotColor: Colors.grey,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Women\'s Collection',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.6,
                child: ProductGrid(productList: women),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottNavigation(bottomIndex: 0),
    );
  }
}
