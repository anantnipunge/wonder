import 'package:flutter/material.dart';
import 'package:frontend/Screens/components/onboard.dart';
// import 'widgets/Tabs.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Wonder', // - Revolutionizing the e-commerce industry
      theme: ThemeData(
        // colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 0, 61, 13)),
        useMaterial3: true,
      ),
      home: OnboardScreen(),
    );
  }
}
