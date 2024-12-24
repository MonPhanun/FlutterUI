import 'package:cached_network_image/cached_network_image.dart';
import 'package:clothshop/views/shimmerShare/shimmerImage/shimmer_image.dart';
import 'package:flutter/material.dart';

class ProductCart extends StatelessWidget {
  const ProductCart(
      {super.key, required this.img, required this.name, required this.price});
  final String img;
  final String name;
  final double price;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 170,
          decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius:
                  const BorderRadius.vertical(top: Radius.circular(8))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 140,
                alignment: Alignment.center,
                child: CachedNetworkImage(
                  imageUrl: img,
                  fit: BoxFit.cover,
                  placeholder: (context, url) => const ShimmerImage(),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 6),
                child: Text(
                  name,
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 6),
                child: Row(
                  children: [
                    Text(
                      "Price : ",
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.primary,
                          fontSize: 14,
                          fontWeight: FontWeight.w300),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      "\$$price",
                      style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontSize: 12,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        Positioned(
            top: 5,
            right: 5,
            child: Icon(
              Icons.favorite_border,
              color: Colors.grey[400],
            ))
      ],
    );
  }
}
