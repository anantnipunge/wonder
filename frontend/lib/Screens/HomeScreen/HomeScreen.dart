import 'package:flutter/material.dart';
import 'package:frontend/Models/Product.dart';
import 'package:frontend/Screens/HomeScreen/components/Categories.dart';
import 'package:frontend/Screens/HomeScreen/components/MySearchBar.dart';
import 'package:frontend/Screens/HomeScreen/components/PopularCarousel.dart';
// import 'package:frontend/assets';

import '../../constants/constants.dart';

class HomeScreen extends StatefulWidget {
  //const HomeScreen({super.key});
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeState();
}

class _HomeState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      appBar: buildAppBar(),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              MySearchBar(),
              Categories(),
              PopularCarousel(
                products: productList,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

AppBar buildAppBar() {
  return AppBar(
    backgroundColor: Colors.white,
    title: const Text(
      'Wonder',
      style: TextStyle(
        color: kMainDarkColor,
        fontSize: 28,
      ),
    ),
    actions: <Widget>[
      IconButton(
        icon: const Icon(Icons.notifications_outlined),
        onPressed: () {},
      ),
      IconButton(
        icon: const Icon(Icons.person_outline_outlined),
        onPressed: () {},
      ),
    ],
  );
}
