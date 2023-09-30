import 'package:flutter/material.dart';
import 'package:frontend/Screens/Categories.dart';
import '../Screens/Search.dart';
import '../constants/constants.dart';
// import 'package:frontend/constants/constants.dart';

class Body extends StatefulWidget {
  const Body({super.key, required this.title});
  final String title;
  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: const SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              Search(),
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
