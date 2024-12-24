import 'package:cached_network_image/cached_network_image.dart';
import 'package:clothshop/models/mockData/home_mock.dart';
import 'package:clothshop/models/product_vm.dart';
import 'package:clothshop/views/shares/productCart/product_cart.dart';
import 'package:clothshop/views/shimmerShare/shimmerImage/shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //
  List<ProductVm> bestSale = [];
  List<ProductVm> popular = [];
  List<ProductVm> newProduct = [];
  //
  @override
  void initState() {
    // implement initState
    super.initState();
    bestSale = HomeMock.proBestSale;
    popular = HomeMock.proPopular;
    newProduct = HomeMock.newProduct;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            height: 60,
            color: Colors.white,
            child: Row(
              children: [
                Text(
                  "DipStore",
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
          Expanded(
            child: ListView(
              children: [
                Stack(
                  children: [
                    SizedBox(
                      height: 240,
                      width: Get.width,
                      child: CachedNetworkImage(
                        imageUrl:
                            "https://i.pinimg.com/236x/58/3a/04/583a047cb1157ce5740f0bcac341f1ba.jpg",
                        fit: BoxFit.cover,
                        placeholder: (context, url) => const ShimmerImage(),
                      ),
                    ),
                    Positioned(
                        top: 0,
                        child: Container(
                          height: 240,
                          width: Get.width,
                          color: const Color.fromARGB(83, 0, 0, 0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "New Winter 2021",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 24,
                                    fontWeight: FontWeight.w600),
                              ),
                              const Text(
                                "Collegtion",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 22,
                                    fontWeight: FontWeight.w400),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Container(
                                height: 40,
                                width: 150,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.white),
                                    borderRadius: BorderRadius.circular(8)),
                                child: const Text(
                                  "Detail Here",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400),
                                ),
                              )
                            ],
                          ),
                        ))
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    children: [
                      Text(
                        "Best Sale",
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.primary,
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Icon(
                        Icons.local_fire_department_outlined,
                        color: Colors.red,
                      ),
                      const Spacer(),
                      Container(
                        height: 25,
                        width: 30,
                        decoration: BoxDecoration(
                            color: Colors.pink,
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(4)),
                        child: const Icon(
                          Icons.double_arrow_sharp,
                          color: Colors.white,
                          size: 18,
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Container(
                        height: 25,
                        width: 30,
                        decoration: BoxDecoration(
                            color: Colors.pink,
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(4)),
                        child: const Icon(
                          Icons.more_horiz,
                          color: Colors.white,
                          size: 18,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 210,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: bestSale.length,
                      itemBuilder: (context, index) => Padding(
                            padding: const EdgeInsets.only(left: 16),
                            child: ProductCart(
                              img: bestSale[index].img,
                              name: bestSale[index].name,
                              price: bestSale[index].price,
                            ),
                          )),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    children: [
                      Text(
                        "Popular",
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.primary,
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Icon(
                        Icons.local_fire_department_outlined,
                        color: Theme.of(context).primaryColor,
                      ),
                      const Spacer(),
                      Container(
                        height: 25,
                        width: 30,
                        decoration: BoxDecoration(
                            color: Colors.pink,
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(4)),
                        child: const Icon(
                          Icons.double_arrow_sharp,
                          color: Colors.white,
                          size: 18,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 210,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: popular.length,
                      itemBuilder: (context, index) => Padding(
                            padding: const EdgeInsets.only(left: 16),
                            child: ProductCart(
                              img: popular[index].img,
                              name: popular[index].name,
                              price: popular[index].price,
                            ),
                          )),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    children: [
                      Text(
                        "New Product",
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.primary,
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Icon(
                        Icons.local_fire_department_outlined,
                        color: Theme.of(context).primaryColor,
                      ),
                      const Spacer(),
                      Container(
                        height: 25,
                        width: 30,
                        decoration: BoxDecoration(
                            color: Colors.pink,
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(4)),
                        child: const Icon(
                          Icons.double_arrow_sharp,
                          color: Colors.white,
                          size: 18,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 210,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: newProduct.length,
                      itemBuilder: (context, index) => Padding(
                            padding: const EdgeInsets.only(left: 16),
                            child: ProductCart(
                              img: newProduct[index].img,
                              name: newProduct[index].name,
                              price: newProduct[index].price,
                            ),
                          )),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
