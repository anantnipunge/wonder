import 'package:flutter/material.dart';
import 'package:frontend/Screens/components/Categories.dart';
import 'package:frontend/Screens/components/MySearchBar.dart';

import '../../Models/Product.dart';
import '../../constants/constants.dart';
import '../components/PopularCarousel.dart';

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
    automaticallyImplyLeading: false,
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
