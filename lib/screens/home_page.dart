import 'package:eplastic_waste/constants/color.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: dark,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: dark,
        title: const Text(
          "E-PLASTICA",
          style: TextStyle(
            fontSize: 25,
          ),
        ),
        centerTitle: true,
      ),
    );
  }
}
