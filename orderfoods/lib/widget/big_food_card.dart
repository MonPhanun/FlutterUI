import 'package:flutter/material.dart';

class BigFoodCard extends StatelessWidget {
  final String imgurl;

  const BigFoodCard({super.key, required this.imgurl});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 0),
      child: Stack(alignment: Alignment.topCenter, children: [
        Padding(
          padding: const EdgeInsets.only(top: 70, right: 30, left: 5),
          child: Card(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 150,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //space

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
                    padding: EdgeInsets.fromLTRB(8.0, 14, 8, 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("\$  24.00"),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 30,
                          ),
                          child: Icon(Icons.favorite_border_outlined),
                        )
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
          top: 0,
          bottom: 0,
          right: -20,
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.4),
                      offset: const Offset(0.2, 20),
                      blurRadius: 15,
                      spreadRadius: -40)
                ]),
            child: Image.asset(
              imgurl,
              width: 220,
              height: 220,
            ),
          ),
        )
      ]),
    );
  }
}
