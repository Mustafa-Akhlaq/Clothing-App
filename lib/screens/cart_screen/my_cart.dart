import 'package:ecommerce_app/customWidget/bottom_navigation.dart';
import 'package:ecommerce_app/data/data.dart';
import 'package:ecommerce_app/utils/theme_color.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

final currencyFormat = NumberFormat.currency(locale: 'en_US', symbol: 'USD ');

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  double calculateSubtotal() {
    return listTile_data.fold(
        0.0, (sum, item) => sum + (item['price'] * item['count']));
  }

  @override
  Widget build(BuildContext context) {
    double subTotal = calculateSubtotal();
    double deliveryFee = 20.0; // Fixed delivery fee
    double gst = subTotal * 0.03; // 3% GST
    double totalCost = subTotal + deliveryFee + gst;

    return Scaffold(
      appBar: AppBar(
        title: const Text('My Cart'),
        backgroundColor: themeColor(),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: listTile_data.length,
              itemBuilder: (context, index) {
                final product = listTile_data[index];

                return ListTile(
                  leading: Image.asset('assets/images/${product["image"]}',
                      width: 50, height: 50),
                  title: Text(product['pdDetail']),
                  subtitle: Text(
                      '${currencyFormat.format(product['price'])} x ${product['count']}'),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.remove),
                        onPressed: () {
                          setState(() {
                            // Decrease product count logic
                            if (product['count'] > 1) {
                              product['count']--;
                            } else {
                              listTile_data
                                  .removeAt(index); // Remove item if count is 0
                            }
                          });
                        },
                      ),
                      Text('${product['count']}'),
                      IconButton(
                        icon: const Icon(Icons.add),
                        onPressed: () {
                          setState(() {
                            // Increase product count logic
                            product['count']++;
                          });
                        },
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Sub-Total'),
                    Text(currencyFormat.format(subTotal)),
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Delivery Fee'),
                    Text(currencyFormat.format(deliveryFee)),
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('GST (3%)'),
                    Text(currencyFormat.format(gst)),
                  ],
                ),
                const Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Total Cost',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    Text(
                      currencyFormat.format(totalCost),
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
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
                        'Proceed to Checkout',
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
      bottomNavigationBar:
          const BottNavigation(bottomIndex: 1), // Set to 1 for Cart
    );
  }
}
