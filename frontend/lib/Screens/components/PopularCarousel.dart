import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:frontend/Models/Product.dart';
import 'package:frontend/constants/constants.dart';

class PopularCarousel extends StatelessWidget {
  final List<Product> products;

  const PopularCarousel({
    Key? key,
    required this.products,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Add the title widget here
        Padding(
          padding: EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 8.0), // Add left padding
          child: Text(
            'Popular Products',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        CarouselSlider.builder(
          itemCount: products.length,
          itemBuilder: (BuildContext context, int index, int realIndex) {
            final product = products[index];
            return ProductCard(
              imgurl: product.imgurl,
              title: product.title,
              price: product.price,
              rating: product.rating,
            );
          },
          options: CarouselOptions(
            height: 250, // Adjust the height as needed
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 3),
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            enlargeCenterPage: true,
          ),
        ),
      ],
    );
  }
}

class ProductCard extends StatelessWidget {
  final String imgurl;
  final String title;
  final double price;
  final double rating;

  ProductCard({
    required this.imgurl,
    required this.title,
    required this.price,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    // Card widget here
    return Card(
      color: kGinColor,
      elevation: 5,
      surfaceTintColor: kGinColor,
      margin: EdgeInsets.symmetric(horizontal: 5, vertical: 7),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset(imgurl, height: 125, width: 160, fit: BoxFit.contain),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                title,
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                // overflow: TextOverflow
                //     .ellipsis, // Handle overflow by displaying ellipsis
                // maxLines: 2,
              ),
            ),
            Text('\$$price', style: TextStyle(fontSize: 16)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                for (int i = 0; i < 5; i++)
                  Icon(
                    Icons.star,
                    color: i < rating ? Colors.yellow : Colors.grey,
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// ... Rest of the code
