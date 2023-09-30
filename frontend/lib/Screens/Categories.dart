// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:frontend/Models/Category.dart';
import 'package:frontend/Screens/ProductDetail.dart';
import '../constants/constants.dart';

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
        itemBuilder: (context, index) => buildCategory(index),
      ),
    );
  }

  Widget buildCategory(int index) {
    return GestureDetector(
        onTap: () {
          setState(() {
            selectedIndex = index;
          });
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ProductDetail(
                categories: categories[index],
                // pass to the products() page
              ),
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
                  padding: const EdgeInsets.all(16),
                  child: Image.asset(
                    categories[index].imgurl,
                    fit: BoxFit.cover,
                  ),
                  decoration: BoxDecoration(
                    color: selectedIndex == index ? kMainColor : kGinColor,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(5),
                    ),
                  ),
                ),
              ),
            ),
            Text(
              categories[index].title,
              style: const TextStyle(fontSize: 18, color: kTextColor),
            ),
          ],
        ));
  }
}
