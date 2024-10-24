import 'package:flutter/material.dart';

class MenuFeature extends StatelessWidget {
  final String title;
  final String url;
  const MenuFeature({super.key, required this.url, required this.title});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      borderRadius: BorderRadius.circular(12),
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 50,
                height: 50,
                child: Image.network(url),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                title,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              )
            ]),
      ),
    );
  }
}
