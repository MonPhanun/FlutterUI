import 'package:flutter/material.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({super.key});

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          height: 60,
          color: Colors.white,
          child: Row(
            children: [
              Text(
                "Favorite",
                style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              const Spacer(),
              Icon(Icons.mail_outline_outlined,
                  color: Theme.of(context).colorScheme.primary),
              const SizedBox(
                width: 15,
              ),
              Icon(Icons.notifications_none_outlined,
                  size: 28, color: Theme.of(context).colorScheme.primary),
            ],
          ),
        ),
        Expanded(child: ListView(children: []))
      ],
    );
  }
}
