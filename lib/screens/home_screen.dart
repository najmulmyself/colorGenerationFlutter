import 'dart:math';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var generatedColor = Random().nextInt(Colors.primaries.length);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          generatedColor = Random().nextInt(Colors.primaries.length);
        });
      },
      child: Scaffold(
        backgroundColor: Colors.primaries[generatedColor],
        body: SafeArea(
            child: Center(
          child: Text("Hey There"),
        )),
      ),
    );
  }
}
