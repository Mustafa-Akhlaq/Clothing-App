import 'package:ecommerce_app/data/data.dart';
import 'package:ecommerce_app/utils/theme_color.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

final currencyFormat = NumberFormat.currency(locale: 'en_US', symbol: 'USD ');

class ProductDetailScreen extends StatelessWidget {
  final String image;
  final String pdDetail;
  final double price;

  const ProductDetailScreen({
    super.key,
    required this.image,
    required this.pdDetail,
    required this.price,
  });

  void _addToCart(BuildContext context) {
    // Check if the product is already in the cart
    bool exists = false;
    for (var product in listTile_data) {
      if (product['pdDetail'] == pdDetail) {
        product['count']++;
        exists = true;
        break;
      }
    }

    // If the product is not in the cart, add it
    if (!exists) {
      listTile_data.add({
        'image': image,
        'pdDetail': pdDetail,
        'price': price,
        'count': 1, // Start with 1 as the initial count
      });
    }

    // Show a SnackBar confirmation
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: themeColor(),
        content: const Center(child: Text('Added to Cart Successfully')),
        duration: const Duration(seconds: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Details'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/images/$image',
              fit: BoxFit.contain,
              width: double.infinity,
              height: 300,
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    pdDetail,
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    currencyFormat.format(price),
                    style: const TextStyle(
                      fontSize: 18,
                      color: Colors.green,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'This is the product description. Add more details here about the product, materials used, sizes available, etc.',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          _addToCart(context); // Add the product to cart
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
                        child: const Text(
                          'Add to Cart',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
