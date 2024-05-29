import 'package:flutter/material.dart';
import 'package:gyuko/pages/home_page.dart';

void main() {
  runApp(const Gyuko());
}

class Gyuko extends StatelessWidget {
  const Gyuko({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appName,
      home: HomePage(),
    );
  }
}

const appName = "Gyuko";
