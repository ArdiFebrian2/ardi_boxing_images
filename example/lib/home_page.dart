import 'package:flutter/material.dart';
import 'package:ardi_boxing_images/ardi_boxing_images.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Plugin Example"),
      ),
      body: ArdiBoxingImages(),
    );
  }
}
