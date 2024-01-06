import 'package:flutter/material.dart';
import 'package:frontend/constants/constants.dart';

class MySearchBar extends StatefulWidget {
  const MySearchBar({super.key});

  @override
  State<MySearchBar> createState() => _SearchState();
}

class _SearchState extends State<MySearchBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: TextField(
        style: const TextStyle(color: kMainDarkColor),
        cursorColor: kMainDarkColor,
        decoration: InputDecoration(
          filled: true,
          fillColor: kGinColor,
          hintText: 'Search your favourite product',
          hintStyle: const TextStyle(color: kGreyColor),
          prefixIcon: const Icon(
            Icons.search,
            color: kMainDarkColor,
            size: 26.0,
          ),
          suffixIcon: IconButton(
            icon: const Icon(Icons.tune_outlined),
            color: kMainDarkColor,
            iconSize: 26.0,
            splashRadius: 20.0,
            onPressed: () {/*implement filter by category*/},
          ),
          border: OutlineInputBorder(
            borderSide: const BorderSide(color: kGinColor),
            borderRadius: BorderRadius.circular(15.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: kGinColor),
            borderRadius: BorderRadius.circular(15.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: kGinColor),
            borderRadius: BorderRadius.circular(15.0),
          ),
        ),
      ),
    );
  }
}
