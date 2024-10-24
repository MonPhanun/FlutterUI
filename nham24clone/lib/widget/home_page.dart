import 'dart:async';

import 'package:flutter/material.dart';
import 'package:nham24clone/widget/menu_feature.dart';
import 'package:nham24clone/widget/promote_shop_card.dart';
import 'package:nham24clone/widget/slide_card.dart';
import 'package:nham24clone/widget/trending_card.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController pageController = PageController();
  int pageCount = 3;

  @override
  void initState() {
    super.initState();
    Timer.periodic(const Duration(seconds: 3), (timer) {
      if (pageController.page! >= pageCount - 1) {
        pageController.animateToPage(0,
            duration: const Duration(microseconds: 1000000),
            curve: Curves.fastLinearToSlowEaseIn);
      } else {
        pageController.nextPage(
            duration: const Duration(microseconds: 1000000),
            curve: Curves.fastLinearToSlowEaseIn);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: false,
          elevation: 0,
          title: const SizedBox(
              width: 150,
              height: 40,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Icon(
                    Icons.motorcycle,
                    color: Colors.blue,
                    size: 49,
                  ),
                  Text(
                    'nham24',
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  )
                ],
              )),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [Text("Your location"), Icon(Icons.location_pin)],
                  ),
                  Text(
                    "CURRENT LOCATION",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
            )
          ]),
      body: ListView(
        children: [
          // slider
          LimitedBox(
            maxHeight: 250,
            child: Stack(
              children: [
                PageView(controller: pageController, children: const [
                  AdsSlideCard(
                    url:
                        'https://imgs.search.brave.com/2oi0rD1Jx9HtuV4IYhdfDeQCNDeEkvSx1HO-F4ZOV7g/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5nZXR0eWltYWdl/cy5jb20vaWQvOTY3/Mzk0NjYwL3Bob3Rv/L29yYW5nZWJ1cmct/c2MtcHJvbW90aW9u/YWwtYXRtb3NwaGhl/cmUtYXQta2ZjLW9u/LWFwcmlsLTQtMjAx/OC1pbi1vcmFuZ2Vi/dXJnLXNvdXRoLWNh/cm9saW5hLmpwZz9z/PTYxMng2MTImdz0w/Jms9MjAmYz1OQU1u/Z0gwczR5MjdOVFls/NTZrLUh2QXJiXzVN/SnRkTjJBdkRneXBU/NFZVPQ',
                  ),
                  AdsSlideCard(
                    url:
                        'https://imgs.search.brave.com/TGt2fGzg25NH_sDfAlY3BLAQJmbQkAbUvQjZ4izxVUk/rs:fit:500:0:0/g:ce/aHR0cHM6Ly90NC5m/dGNkbi5uZXQvanBn/LzA1LzU3LzQwLzM3/LzM2MF9GXzU1NzQw/Mzc5OF91QVBGSGNl/ZXNoV0lBN2RnTUhh/ZGwwVWZsdHpMQkZu/Qy5qcGc',
                  ),
                  AdsSlideCard(
                    url:
                        'https://imgs.search.brave.com/s1Pe8B01x4a5KDducwzG_x3I_AE2R_7SGrKLv5mU8nw/rs:fit:500:0:0/g:ce/aHR0cHM6Ly90NC5m/dGNkbi5uZXQvanBn/LzA1LzE3LzI3Lzgz/LzM2MF9GXzUxNzI3/ODM4MV9ucEMwY01U/VG8xNHdEU1FNSHRi/TTVxSTFCTjBqaEVw/Qi5qcGc',
                  ),
                ]),
                // Smooth page indicator
                Positioned(
                    bottom: 15,
                    left: 185,
                    child: SmoothPageIndicator(
                        onDotClicked: (index) {
                          // ignore: avoid_print
                          print(index);
                        },
                        effect: const JumpingDotEffect(
                            activeDotColor: Colors.blue,
                            dotHeight: 12,
                            dotWidth: 12),
                        controller: pageController,
                        count: 3))
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          //card
          GridView.count(
            crossAxisCount: 4,
            shrinkWrap: true,
            physics: const AlwaysScrollableScrollPhysics(),
            children: const [
              MenuFeature(
                url:
                    'https://imgs.search.brave.com/b76vpnIvXTV_P6Ut7Y1b_XAlKGnN0SZ9oWfvh68IDAA/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9jZG4t/aWNvbnMtcG5nLmZs/YXRpY29uLmNvbS8x/MjgvMjQwMS8yNDAx/MTc0LnBuZw',
                title: 'TAXI',
              ),
              MenuFeature(
                url:
                    'https://imgs.search.brave.com/_cTBQE3BDKysPtrswtB_twy6-E6Oubdm24dFb56RtUI/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9pY29u/cy52ZXJ5aWNvbi5j/b20vcG5nLzEyOC9i/dXNpbmVzcy9wcm9w/ZXJ0eS1kaXN0cmlj/dC9leHByZXNzLWNv/bGxlY3Rpb24ucG5n',
                title: 'EXPRESS',
              ),
              MenuFeature(
                url: 'https://cdn-icons-png.flaticon.com/128/737/737967.png',
                title: 'FOODS',
              ),
              MenuFeature(
                url: 'https://cdn-icons-png.flaticon.com/128/3514/3514242.png',
                title: 'GROCERY',
              ),
              MenuFeature(
                url: 'https://cdn-icons-png.flaticon.com/128/4098/4098389.png',
                title: 'FLOWER',
              ),
              MenuFeature(
                url: 'https://cdn-icons-png.flaticon.com/128/1162/1162499.png',
                title: 'SHOP',
              ),
              MenuFeature(
                url:
                    'https://cdn-icons-png.flaticon.com/128/12532/12532280.png',
                title: 'BAKERY',
              ),
              MenuFeature(
                url: 'https://cdn-icons-png.flaticon.com/128/3993/3993977.png',
                title: 'ALCOHOL',
              ),
            ],
          ),
          // space
          Container(
            height: 8,
            color: Colors.grey[200],
          ),
          //Title
          const Padding(
            padding: EdgeInsets.all(12.0),
            child: Text(
              'Trending Now',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          //Trending product
          LimitedBox(
            maxHeight: 220,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                TrendingCard(
                  url:
                      'https://imgs.search.brave.com/J199IqT4ngQbXxXXqTxZNv_KPoUH-RA4AzPg8G-9gTc/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9zdDMu/ZGVwb3NpdHBob3Rv/cy5jb20vMTI0MTEz/OTgvMTg2MzMvaS80/NTAvZGVwb3NpdHBo/b3Rvc18xODYzMzYx/MDQtc3RvY2stcGhv/dG8tZ2RhbnNrLXBv/bGFuZC1mZWJydWFy/eS0yMDE4LWZyaWVk/LmpwZw',
                ),
                SizedBox(
                  width: 10,
                ),
                TrendingCard(
                  url:
                      'https://imgs.search.brave.com/nO4tPy_wxr3dpb65L2ubE1yOpamtj0jBhZ0gVECSooM/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9yZWNp/cGVzLm5ldC93cC1j/b250ZW50L3VwbG9h/ZHMvMjAyMC8xMC9D/b3B5Y2F0LUtGQy1Q/b3RhdG8tV2VkZ2Vz/LTEwMjR4NTc2Lmpw/Zw',
                ),
                SizedBox(
                  width: 10,
                ),
                TrendingCard(
                  url:
                      'https://imgs.search.brave.com/QonxWltaJYwYgQjpGgYT4W7ikFYD7zGMA73V6FTwaFk/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9yZXN0/YXVyYW50Y2xpY2tz/LmNvbS93cC1jb250/ZW50L3VwbG9hZHMv/MjAyMy8wNS9DaGVl/c3ktd2VkZ2VzLWZy/b20tS2VudHVja3kt/RnJpZWQtQ2hpY2tl/bi5qcGc',
                ),
              ],
            ),
          ),
          Container(
            height: 8,
            color: Colors.grey[200],
          ),
          //Title
          // const Padding(
          //   padding: EdgeInsets.all(12.0),
          //   child: Text(
          //     'Promote',
          //     style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          //   ),
          // ),
          // promotion card
          const PromoteShopCard(
            url:
                'https://i.pinimg.com/enabled_hi/236x/4f/a9/68/4fa96823a0f4d7ccc37112c2f6e7cedb.jpg',
          ),
          Container(
            height: 8,
            color: Colors.grey[200],
          ),
          const PromoteShopCard(
            url:
                'https://i.pinimg.com/enabled_hi/236x/35/ee/2c/35ee2c636f800dfd9e2ac9ab219d2f82.jpg',
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.blue,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  size: 30,
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.map,
                  size: 30,
                ),
                label: 'Track'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.inbox,
                  size: 30,
                ),
                label: 'Inbox'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.account_circle,
                  size: 30,
                ),
                label: 'Account'),
          ]),
    );
  }
}
