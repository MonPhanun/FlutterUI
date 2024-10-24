import 'package:flutter/material.dart';
import 'package:orderfoods/widget/big_food_card.dart';
import 'package:orderfoods/widget/food_item_card.dart';
import 'package:orderfoods/widget/menu_bottom_item.dart';
import 'package:orderfoods/widget/page_item_detail.dart';
import 'package:orderfoods/widget/tab_type_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int bottomMenuIndex = 1;
  int tabItemIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // app bar
      appBar: AppBar(
          backgroundColor: const Color(0xffBDDFFB),
          leading: const Icon(Icons.menu_open),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 15.0),
              child: Material(
                color: Colors.black,
                shape: CircleBorder(),
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.shopping_cart,
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ]),

      // Body
      body: Container(
        width: MediaQuery.of(context).size.width,
        color: const Color(0xffBDDFFB),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 20, top: 10, right: 200),
                child: Text(
                  'Delicious Food',
                  style: TextStyle(
                      fontSize: 22,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 8, right: 20),
                child: Text(
                  'We made fresh and Healthy food',
                  style: TextStyle(color: Colors.black.withOpacity(0.6)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TabTypeItem(
                        iconData: Icons.fastfood,
                        isActive: tabItemIndex == 1,
                        onTabItemClick: () {
                          setState(() {
                            tabItemIndex = 1;
                          });
                        },
                      ),
                      TabTypeItem(
                        iconData: Icons.local_drink,
                        isActive: tabItemIndex == 2,
                        onTabItemClick: () {
                          setState(() {
                            tabItemIndex = 2;
                          });
                        },
                      ),
                      TabTypeItem(
                        iconData: Icons.emoji_food_beverage,
                        isActive: tabItemIndex == 3,
                        onTabItemClick: () {
                          setState(() {
                            tabItemIndex = 3;
                          });
                        },
                      ),
                      TabTypeItem(
                        iconData: Icons.no_food_rounded,
                        isActive: tabItemIndex == 4,
                        onTabItemClick: () {
                          setState(() {
                            tabItemIndex = 4;
                          });
                        },
                      ),
                    ]),
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    SizedBox(
                      height: 270,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          FoodsItem(
                            herotage: 'pic1',
                            imgurl: 'lib/assets/imgs/pic1.png',
                            onClick: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const ItemDetail(
                                            herotage: 'pic1',
                                            imgurl: 'lib/assets/imgs/pic1.png',
                                          )));
                            },
                          ),
                          FoodsItem(
                            herotage: 'pic2',
                            imgurl: 'lib/assets/imgs/pic2.png',
                            onClick: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const ItemDetail(
                                            herotage: 'pic2',
                                            imgurl: 'lib/assets/imgs/pic2.png',
                                          )));
                            },
                          ),
                          FoodsItem(
                            herotage: 'pic3',
                            imgurl: 'lib/assets/imgs/pic3.png',
                            onClick: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const ItemDetail(
                                            herotage: 'pic3',
                                            imgurl: 'lib/assets/imgs/pic3.png',
                                          )));
                            },
                          ),
                          FoodsItem(
                            herotage: 'pic4',
                            imgurl: 'lib/assets/imgs/pic4.png',
                            onClick: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const ItemDetail(
                                            herotage: 'pic4',
                                            imgurl: 'lib/assets/imgs/pic4.png',
                                          )));
                            },
                          ),
                        ],
                      ),
                    ),
                    const BigFoodCard(
                      imgurl: 'lib/assets/imgs/pic5.png',
                    ),
                    const BigFoodCard(
                      imgurl: 'lib/assets/imgs/pic6.png',
                    ),
                    const BigFoodCard(
                      imgurl: 'lib/assets/imgs/pic7.png',
                    ),
                    const BigFoodCard(
                      imgurl: 'lib/assets/imgs/pic8.png',
                    ),
                  ],
                ),
              )
            ]),
      ),

      // Bottom Navigation Bar
      bottomNavigationBar: btnNavigationBar(),
    );
  }

  //
  // Bottom navigation bar
  Widget btnNavigationBar() {
    return Container(
      color: const Color(0xffBDDFFB),
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
        child: Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.black, borderRadius: BorderRadius.circular(25)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MenuBottomItem(
                  iconData: Icons.home_outlined,
                  isActive: bottomMenuIndex == 1,
                  onItemClick: () {
                    setState(() {
                      bottomMenuIndex = 1;
                    });
                  },
                ),
                MenuBottomItem(
                  iconData: Icons.account_balance_wallet_outlined,
                  isActive: bottomMenuIndex == 2,
                  onItemClick: () {
                    setState(() {
                      bottomMenuIndex = 2;
                    });
                  },
                ),
                MenuBottomItem(
                  iconData: Icons.message_outlined,
                  isActive: bottomMenuIndex == 3,
                  onItemClick: () {
                    setState(() {
                      bottomMenuIndex = 3;
                    });
                  },
                ),
                MenuBottomItem(
                  iconData: Icons.account_circle_outlined,
                  isActive: bottomMenuIndex == 4,
                  onItemClick: () {
                    setState(() {
                      bottomMenuIndex = 4;
                    });
                  },
                ),
              ],
            )),
      ),
    );
  }
}
