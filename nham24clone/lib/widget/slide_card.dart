import 'package:flutter/material.dart';

class AdsSlideCard extends StatelessWidget {
  final String url;
  const AdsSlideCard({super.key, required this.url});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: SizedBox(
          height: 200,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.network(url, fit: BoxFit.cover),
          ),
        ),
      ),
    );
  }
}
