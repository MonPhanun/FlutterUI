import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ListView(
        children: [
          Container(
            height: 200,
            color: Colors.deepPurple,
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 200,
            color: Colors.deepOrange,
          )
        ],
      ),
    );
  }
}
