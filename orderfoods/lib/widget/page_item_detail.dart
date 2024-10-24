import 'package:flutter/material.dart';

class ItemDetail extends StatelessWidget {
  final String herotage;
  final String imgurl;
  const ItemDetail({super.key, required this.herotage, required this.imgurl});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xffBDDFFB),
          actions: const [Icon(Icons.more_vert)],
          elevation: 0,
        ),
        body: Container(
          color: const Color(0xffBDDFFB),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              // Hero image
              child: Hero(
                tag: herotage,
                child: Image.asset(
                  imgurl,
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.width,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 40, right: 40),
              child: Row(
                children: [
                  Text(
                    "Egg Currey",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Icon(Icons.access_time_outlined),
                  SizedBox(
                    width: 5,
                  ),
                  Text('25 Min')
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 40, right: 40, top: 20),
              child: Text(
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.'),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 40, right: 40, top: 20),
              child: Text('Total Price'),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40, right: 40),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      '\$ 15.00',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 63, 167, 252),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(20),
                              bottomRight: Radius.circular(20))),
                      child: const Row(children: [
                        Icon(
                          Icons.favorite_border_outlined,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Add to Card',
                          style: TextStyle(color: Colors.white),
                        )
                      ]),
                    )
                  ]),
            ),
          ]),
        ));
  }
}
