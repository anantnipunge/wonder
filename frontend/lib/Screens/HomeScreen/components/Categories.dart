// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:frontend/Models/Category.dart';
import 'package:frontend/widgets/CategoryItem.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) => CategoryItem(
          index: index,
          isSelected: selectedIndex == index,
          onTap: () {
            setState(
              () {
                selectedIndex = index;
              },
            );
          },
        ),
      ),
    );
  }
}
