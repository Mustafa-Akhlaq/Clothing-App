// import 'package:fashionfusion/screens/custom_widget/gridview_hp/gridview_hp.dart';
// import 'package:fashionfusion/screens/product_details/product_details.dart';
// import 'package:flutter/material.dart';

// class JacketData extends StatelessWidget {
//   JacketData({super.key});

//   final List<Map<String, dynamic>> data = [
//     {
//       "image": "assets/images/Womens/Jackets/Jackets.jpg",
//       "pdDetail": "Navy Waist Coat",
//       "price": 12350.0,
//       "count": 0,
//     },
//     {
//       "image": "assets/images/Womens/Jackets/Jackets1.jpg",
//       "pdDetail": "Multi Linen Fabric",
//       "price": 7655.0,
//       "count": 0,
//     },
//     {
//       "image": "assets/images/Womens/Jackets/Jackets2.jpg",
//       "pdDetail": "Poly Stain Fabric",
//       "price": 9450.0,
//       "count": 0,
//     },
//     {
//       "image": "assets/images/Womens/Jackets/Jackets13.jpg",
//       "pdDetail": "Lilac Color Kurti",
//       "price": 3517.0,
//       "count": 0,
//     },
//     {
//       "image": "assets/images/Womens/Jackets/Jackets4.jpg",
//       "pdDetail": "Brown Linen Kurta",
//       "price": 11350.0,
//       "count": 0,
//     },
//     {
//       "image": "assets/images/Womens/Jackets/Jackets5.jpg",
//       "pdDetail": "Multi Lawn Fabric",
//       "price": 12350.0,
//       "count": 0,
//     },
//     {
//       "image": "assets/images/Womens/Jackets/Jackets6.jpg",
//       "pdDetail": "Sand Waist Coat",
//       "price": 13350.0,
//       "count": 0,
//     },
//     {
//       "image": "assets/images/Womens/Jackets/Jackets7.jpg",
//       "pdDetail": "Light Olive Kurta",
//       "price": 10550.0,
//       "count": 0,
//     },
//     {
//       "image": "assets/images/Womens/Jackets/Jackets8.jpg",
//       "pdDetail": "Milky White Kurta",
//       "price": 9250.0,
//       "count": 0,
//     },
//     {
//       "image": "assets/images/Womens/Jackets/Jackets11.jpg",
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
//               Text("JACKETS"),
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
