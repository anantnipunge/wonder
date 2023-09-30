class Product {
  final String title;
  final String desc;
  final String imgurl;
  final double price;
  final double rating;
  final List imageurls;

  Product({
    required this.title,
    required this.desc,
    required this.imgurl,
    required this.price,
    required this.rating,
    required this.imageurls,
  });
}

final List productList = [
  Product(
    title: 'gaming chair',
    desc: 'useful for gamers',
    imgurl: '',
    price: 300,
    rating: 4.5,
    imageurls: [
      /* image urls*/
      /* image urls*/
      /* image urls*/
    ],
  ),
  Product(
    title: 'study table',
    desc: 'useful for study',
    imgurl: '',
    price: 5600,
    rating: 2.5,
    imageurls: [
      /* image urls*/
      /* image urls*/
      /* image urls*/
    ],
  ),
  Product(
    title: 'dining table',
    desc: 'useful for luch and dinner',
    imgurl: '',
    price: 5800,
    rating: 2.9,
    imageurls: [
      /* image urls*/
      /* image urls*/
      /* image urls*/
    ],
  ),
  Product(
    title: 'sitting table',
    desc: 'useful for study',
    imgurl: '',
    price: 6600,
    rating: 4.7,
    imageurls: [
      /* image urls*/
      /* image urls*/
      /* image urls*/
    ],
  ),
  Product(
    title: 'table lamp',
    desc: 'useful for study',
    imgurl: '',
    price: 2600,
    rating: 4.7,
    imageurls: [
      /* image urls*/
      /* image urls*/
      /* image urls*/
    ],
  ),
];
