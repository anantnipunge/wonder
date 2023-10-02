import 'package:flutter/material.dart';
import 'package:frontend/Screens/HomeScreen/components/Categories.dart';
import 'package:frontend/Screens/HomeScreen/components/MySearchBar.dart';

import '../../constants/constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeState();
}

class _HomeState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: const SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              MySearchBar(),
              Categories(),
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
