// import 'package:fashionfusion/screens/custom_widget/gridview_hp/gridview_hp.dart';
// import 'package:fashionfusion/screens/product_details/product_details.dart';
// import 'package:flutter/material.dart';

// class BlazzersData extends StatelessWidget {
//   BlazzersData({super.key});

//   final List<Map<String, dynamic>> data = [
//     {
//       "image": "assets/images/Womens/Blazzers/Blazzer1.jpg",
//       "pdDetail": "Navy Waist Coat",
//       "price": 12350.0,
//       "count": 0,
//     },
//     {
//       "image": "assets/images/Womens/Blazzers/Blazzer2.jpg",
//       "pdDetail": "Multi Linen Fabric",
//       "price": 7655.0,
//       "count": 0,
//     },
//     {
//       "image": "assets/images/Womens/Blazzers/Blazzer3.jpg",
//       "pdDetail": "Poly Stain Fabric",
//       "price": 9450.0,
//       "count": 0,
//     },
//     {
//       "image": "assets/images/Womens/Blazzers/Blazzer4.jpg",
//       "pdDetail": "Lilac Color Kurti",
//       "price": 3517.0,
//       "count": 0,
//     },
//     {
//       "image": "assets/images/Womens/Blazzers/Blazzer5.jpg",
//       "pdDetail": "Brown Linen Kurta",
//       "price": 11350.0,
//       "count": 0,
//     },
//     {
//       "image": "assets/images/Womens/Blazzers/Blazzer6.jpg",
//       "pdDetail": "Multi Lawn Fabric",
//       "price": 12350.0,
//       "count": 0,
//     },
//     {
//       "image": "assets/images/Womens/Blazzers/Blazzer7.jpg",
//       "pdDetail": "Sand Waist Coat",
//       "price": 13350.0,
//       "count": 0,
//     },
//     {
//       "image": "assets/images/Womens/Blazzers/Blazzer8.jpg",
//       "pdDetail": "Light Olive Kurta",
//       "price": 10550.0,
//       "count": 0,
//     },
//     {
//       "image": "assets/images/Womens/Blazzers/Blazzer9.jpg",
//       "pdDetail": "Milky White Kurta",
//       "price": 9250.0,
//       "count": 0,
//     },
//     {
//       "image": "assets/images/Womens/Blazzers/Blazzer10.jpg",
//       "pdDetail": "Peach Dobby Kurti",
//       "price": 6350.0,
//       "count": 0,
//     },
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         appBar: AppBar(
//           title: const Row(
//             children: [
//               SizedBox(
//                 width: 80,
//               ),
//               Text("BLAZZERS"),
//             ],
//           ),
//         ),
//         body: SingleChildScrollView(
//           child: Column(
//             children: [
//               Container(
//                 height: 1,
//                 width: double.infinity,
//                 color: Colors.black,
//               ),
//               GridView.builder(
//                 physics: const NeverScrollableScrollPhysics(),
//                 shrinkWrap: true,
//                 gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                   crossAxisCount: 2,
//                   childAspectRatio: (100 / 140),
//                   crossAxisSpacing: 30,
//                   mainAxisSpacing: 10,
//                 ),
//                 itemCount: data.length,
//                 itemBuilder: (context, i) {
//                   return GestureDetector(
//                     child: GridViewHP(
//                       images: data[i]["image"],
//                       pdtitle: data[i]["pdDetail"],
//                       price: data[i]["price"],
//                     ),
//                     onTap: () => Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) => ProductDetails(
//                           image: data[i]["image"],
//                           pdDetail: data[i]["pdDetail"],
//                           price: data[i]["price"],
//                         ),
//                       ),
//                     ),
//                   );
//                 },
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
