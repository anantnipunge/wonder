class Category {
  final String title;
  final String description;
  final String imgurl;

  Category({
    required this.title,
    required this.description,
    required this.imgurl,
  });
}

final List<Category> categories = [
  Category(
    title: 'chair',
    description: 'chair\'s are good',
    imgurl: 'assets/chair1.png',
  ),
  Category(
    title: 'sofa',
    description: 'sofa\'s are good',
    imgurl: 'assets/sofa1.png',
  ),
  Category(
    title: 'wheelchair',
    description: 'wheelchair\'s are good',
    imgurl: 'assets/wheelchair.png',
  ),
  Category(
    title: 'sofa3',
    description: 'sofa\'s are good',
    imgurl: 'assets/sofa3.png',
  ),
  Category(
    title: 'table',
    description: 'table\'s are good',
    imgurl: 'assets/table.png',
  ),
];
