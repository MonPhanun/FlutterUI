import 'package:flutter/material.dart';

class FoodsItem extends StatelessWidget {
  final String herotage;
  final String imgurl;
  final VoidCallback onClick;
  const FoodsItem(
      {super.key,
      required this.imgurl,
      required this.onClick,
      required this.herotage});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 10),
      child: Stack(alignment: Alignment.topCenter, children: [
        Padding(
          padding: const EdgeInsets.only(top: 70),
          child: Card(
            child: Container(
              width: 150,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //space
                  SizedBox(
                    height: 100,
                  ),
                  //title
                  Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Text(
                      "Crab Ramen",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Text("Spicy with garlic"),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("\$  24.00"),
                        Icon(Icons.favorite_border_outlined)
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),

        //image
        Positioned(
          left: 0,
          right: 0,
          child: GestureDetector(
            onTap: () {
              onClick();
            },
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.4),
                        offset: const Offset(0.2, 10),
                        blurRadius: 15,
                        spreadRadius: -15)
                  ]),
              child: Hero(
                tag: herotage,
                child: Image.asset(
                  imgurl,
                  width: 170,
                  height: 170,
                ),
              ),
            ),
          ),
        )
      ]),
    );
  }
}
