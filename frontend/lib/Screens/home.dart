import 'package:flutter/material.dart';
import 'package:frontend/widgets/Body.dart';

class Home extends StatefulWidget {
  const Home({super.key, required this.title});
  final String title;

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return const Body(
      title: "Wonder",
    );
  }
}
