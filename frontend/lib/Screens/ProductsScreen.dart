import 'package:flutter/material.dart';
import 'package:frontend/Models/Product.dart';
import 'package:frontend/Screens/ProductDetailScreen.dart';
import 'package:frontend/widgets/product_card.dart';

class ProductsScreen extends StatefulWidget {
  const ProductsScreen({super.key});

  @override
  State<ProductsScreen> createState() => _ProductsState();
}

class _ProductsState extends State<ProductsScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    /*24 is for notification bar on Android*/
    final double itemHeight = (size.height - kToolbarHeight - 24) / 2;
    final double itemWidth = size.width / 2;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'ProductsScreen',
          style: TextStyle(
            color: Colors.black,
            fontSize: 30.0,
          ),
        ),
      ),
      body: GridView.count(
        crossAxisCount: 2, // Number of items in each row
        mainAxisSpacing: 12.0, // Spacing between rows
        crossAxisSpacing: 12.0,
        childAspectRatio: (itemWidth / itemHeight * 1.5),
        // Spacing between columns
        padding: const EdgeInsets.all(8.0), // Padding around the grid
        children: List.generate(
          productList.length,
          (index) {
            return ProductContainer(
              imageUrl: productList[index].imgurl,
              name: productList[index].title.toUpperCase(),
              isLiked: true,
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) =>
                        ProductDetail(categories: productList[index].category),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
