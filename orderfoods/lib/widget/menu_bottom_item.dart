import 'package:flutter/material.dart';

class MenuBottomItem extends StatelessWidget {
  final IconData iconData;
  final bool isActive;
  final VoidCallback onItemClick;

  const MenuBottomItem(
      {super.key,
      required this.iconData,
      required this.isActive,
      required this.onItemClick});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onItemClick();
      },
      child: AnimatedContainer(
        width: isActive ? 50 : 40,
        height: isActive ? 50 : 40,
        duration: const Duration(milliseconds: 300),
        decoration: BoxDecoration(
            color: isActive
                ? const Color(0xffBDDFFB).withOpacity(isActive ? 0.2 : 0.0)
                : Colors.transparent,
            borderRadius: BorderRadius.circular(50)),
        curve: Curves.fastOutSlowIn,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(
            iconData,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
