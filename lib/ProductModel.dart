import 'package:basic/datamodel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  final Product product;
  const ProductItem({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            width: 80,
            height: 80,
            decoration: const BoxDecoration(
                color: Color(0xFFeaf7f0),
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Image.asset(
                product.image,
                // fit: BoxFit.cover,
              ),
            )),
        Text(product.title,
            style: const TextStyle(
                fontSize: 12,
                color: Colors.black,
                fontWeight: FontWeight.w400)),
      ],
    );
  }
}
