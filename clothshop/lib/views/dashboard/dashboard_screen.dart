import 'package:clothshop/controller/dashboard_controller.dart';
import 'package:clothshop/views/favorite/favorite_page.dart';
import 'package:clothshop/views/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';
import 'package:get/get.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(builder: (controller) {
      return Scaffold(
        appBar: AppBar(
          toolbarHeight: 0,
          backgroundColor: Colors.white,
        ),
        body: SafeArea(
          child: IndexedStack(
            index: controller.tabIndex,
            children: [
              const HomePage(),
              const FavoritePage(),
              Container(
                color: Colors.deepOrange[700],
              ),
              Container(
                color: Colors.deepPurple[700],
              )
            ],
          ),
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border(
                  top: BorderSide(
                      color: Theme.of(context).colorScheme.primary,
                      width: 0.4))),
          child: SnakeNavigationBar.color(
            behaviour: SnakeBarBehaviour.floating,
            snakeShape: SnakeShape.circle,
            padding: const EdgeInsets.symmetric(vertical: 4),
            unselectedLabelStyle: const TextStyle(fontSize: 11),
            snakeViewColor: const Color.fromARGB(255, 6, 124, 12),
            unselectedItemColor: const Color.fromARGB(255, 6, 124, 12),
            showUnselectedLabels: true,
            currentIndex: controller.tabIndex,
            onTap: (val) {
              controller.updateIndex(val);
            },
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.favorite), label: 'Favorite'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.shopping_bag,
                    size: 26,
                  ),
                  label: 'Shoping'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: 'Account'),
            ],
          ),
        ),
      );
    });
  }
}
