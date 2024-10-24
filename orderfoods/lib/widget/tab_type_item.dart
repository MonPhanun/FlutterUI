import 'package:flutter/material.dart';

class TabTypeItem extends StatelessWidget {
  final IconData iconData;
  final bool isActive;
  final Function()? onTabItemClick;
  const TabTypeItem(
      {super.key,
      required this.iconData,
      required this.isActive,
      this.onTabItemClick});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTabItemClick,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 100),
        alignment: Alignment.center,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: isActive ? Colors.black : Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        curve: Curves.fastOutSlowIn,
        child: Icon(
          iconData,
          size: isActive ? 25 : 22,
          color: isActive ? Colors.white : Colors.black,
        ),
      ),
    );
  }
}
