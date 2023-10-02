import 'package:flutter/material.dart';
import 'package:frontend/Screens/ProductsScreen.dart';
import '../Models/Category.dart';
import '../constants/constants.dart';

class CategoryItem extends StatefulWidget {
  final int index;
  final bool isSelected;
  final VoidCallback onTap;

  CategoryItem({
    required this.index,
    required this.isSelected,
    required this.onTap,
  });

  @override
  State<CategoryItem> createState() => _BuildCategoryState();
}

class _BuildCategoryState extends State<CategoryItem> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.onTap();

        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const ProductsScreen(),
          ),
        );
      },
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(4),
            child: ClipOval(
              child: Container(
                height: 80,
                width: 80,
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: widget.isSelected ? kGinColor : kMainColor,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(5),
                  ),
                ),
                child: Image.asset(
                  categories[widget.index].imgurl,
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
          Text(
            categories[widget.index].title,
            style: const TextStyle(fontSize: 18, color: kTextColor),
          ),
        ],
      ),
    );
  }
}
