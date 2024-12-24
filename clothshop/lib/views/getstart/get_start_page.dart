import 'package:cached_network_image/cached_network_image.dart';
import 'package:clothshop/views/shimmerShare/shimmerImage/shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetStartPage extends StatefulWidget {
  const GetStartPage({super.key});

  @override
  State<GetStartPage> createState() => _GetStartPageState();
}

class _GetStartPageState extends State<GetStartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            child: CachedNetworkImage(
              imageUrl:
                  "https://i.pinimg.com/564x/a1/59/26/a15926db05c9b446c31b1a24483609c2.jpg",
              fit: BoxFit.cover,
              height: MediaQuery.of(context).size.height,
              placeholder: (context, url) => const ShimmerImage(),
            ),
          ),
          Positioned(
            bottom: 30,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              height: 330,
              width: MediaQuery.of(context).size.width,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                height: 330,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12)),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Welcome to Dipstore",
                      style: TextStyle(
                          fontSize: 22,
                          color: Theme.of(context).colorScheme.secondary),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "jQuery was particularly popular when JavaScript was less standardized across browsers. It offered a consistent, ",
                      style: TextStyle(fontSize: 14, color: Colors.grey[500]),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Container(
                      height: 5,
                      width: 40,
                      decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor,
                          borderRadius: BorderRadius.circular(12)),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Get.toNamed("/singin");
                          },
                          child: Container(
                            height: 60,
                            width: MediaQuery.of(context).size.width * .4,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: Colors.grey[300],
                                borderRadius: BorderRadius.circular(12)),
                            child: Text(
                              'Sign In',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Theme.of(context).primaryColor,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        const Spacer(),
                        InkWell(
                          onTap: () {
                            Get.toNamed("/singup");
                          },
                          child: Container(
                            height: 60,
                            width: MediaQuery.of(context).size.width * .4,
                            decoration: BoxDecoration(
                                color: Theme.of(context).primaryColor,
                                borderRadius: BorderRadius.circular(12)),
                            alignment: Alignment.center,
                            child: const Text(
                              'Get Start',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
