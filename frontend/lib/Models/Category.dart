class Category {
  final String title;
  final String description;
  final String imgurl;
  final double price;

  Category({
    required this.title,
    required this.description,
    required this.imgurl,
    required this.price,
  });
}

final List<Category> categories = [
  Category(
    title: 'chair',
    description: 'chair\'s are good',
    imgurl: 'assets/chair1.png',
    price: 230.00,
  ),
  Category(
    title: 'sofa',
    description: 'sofa\'s are good',
    imgurl: 'assets/sofa1.png',
    price: 670.00,
  ),
  Category(
    title: 'wheelchair',
    description: 'wheelchair\'s are good',
    imgurl: 'assets/wheelchair.png',
    price: 920.00,
  ),
  Category(
    title: 'sofa3',
    description: 'sofa\'s are good',
    imgurl: 'assets/sofa3.png',
    price: 389.00,
  ),
  Category(
    title: 'table',
    description: 'table\'s are good',
    imgurl: 'assets/table.png',
    price: 329.00,
  ),
];
