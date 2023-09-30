import 'package:flutter/material.dart';
import '../Models/Category.dart';
import '../constants/constants.dart';

class BuildCategory extends StatefulWidget {
  const BuildCategory({super.key, required this.index});
  final int index;

  @override
  State<BuildCategory> createState() => _BuildCategoryState();
}

class _BuildCategoryState extends State<BuildCategory> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          setState(() {
            selectedIndex = widget.index;
          });
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
                    color: selectedIndex == widget.index
                        ? kMainDarkColor
                        : kMainColor,
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
        ));
  }
}
