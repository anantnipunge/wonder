import 'package:frontend/Models/Category.dart';

class Product {
  final String title;
  final String desc;
  final String imgurl;
  final double price;
  final double rating;
  final List imageurls;
  final int id;
  final Category category;

  Product(
      {required this.title,
      required this.desc,
      required this.imgurl,
      required this.price,
      required this.rating,
      required this.imageurls,
      required this.id,
      required this.category});
}

List<Product> productList = [
  Product(
    id: 1,
    title: 'gaming chair',
    desc: 'useful for gamers',
    imgurl: 'assets/chair1.png',
    price: 300,
    rating: 4.5,
    category: categories[0],
    imageurls: [
      /* image urls*/
      /* image urls*/
      /* image urls*/
    ],
  ),
  Product(
    id: 2,
    title: 'study table',
    desc: 'useful for study',
    imgurl: 'assets/chair2.png',
    price: 5600,
    rating: 2.5,
    category: categories[4],
    imageurls: [
      /* image urls*/
      /* image urls*/
      /* image urls*/
    ],
  ),
  Product(
    id: 3,
    title: 'dining table',
    desc: 'useful for luch and dinner',
    imgurl: 'assets/chair4.png',
    price: 5800,
    rating: 2.9,
    category: categories[4],
    imageurls: [
      /* image urls*/
      /* image urls*/
      /* image urls*/
    ],
  ),
  Product(
    id: 4,
    title: 'sitting table',
    desc: 'useful for study',
    imgurl: 'assets/sofa1.png',
    price: 6600,
    rating: 4.7,
    category: categories[4],
    imageurls: [
      /* image urls*/
      /* image urls*/
      /* image urls*/
    ],
  ),
  Product(
    id: 5,
    title: 'table lamp',
    desc: 'useful for study',
    imgurl: 'assets/sofa2.png',
    price: 2600,
    rating: 4.7,
    category: categories[0],
    imageurls: [
      /* image urls*/
      /* image urls*/
      /* image urls*/
    ],
  ),
];
