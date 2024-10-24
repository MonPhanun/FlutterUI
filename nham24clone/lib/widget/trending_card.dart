import 'package:flutter/material.dart';

class TrendingCard extends StatelessWidget {
  final String url;
  const TrendingCard({super.key, required this.url});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        height: 200,
        width: 350,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.network(
            url,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
