import 'package:basic/ProductModel.dart';
import 'package:basic/datamodel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HW extends StatelessWidget {
  build(BuildContext context) {
    var backdropColor = Color(0xFFe8e9e9);
    var p1 = Product(
        id: 1, title: 'Vegetables', image: 'assets/images/icons/vegetable.png');
    var p2 = Product(
        id: 2, title: 'Avocado', image: 'assets/images/icons/avocado.png');
    var p3 =
        Product(id: 3, title: 'Sushi', image: 'assets/images/icons/sushi.png');
    var p4 =
        Product(id: 4, title: 'Bread', image: 'assets/images/icons/bread.png');
    var p5 =
        Product(id: 5, title: 'Cake', image: 'assets/images/icons/cake.png');
    var p6 =
        Product(id: 6, title: 'Fish', image: 'assets/images/icons/fish.png');
    var p7 =
        Product(id: 7, title: 'Juice', image: 'assets/images/icons/juice.png');
    var p8 = Product(
        id: 7, title: 'Milk', image: 'assets/images/icons/milk-pack.png');
    var p9 = Product(
        id: 7, title: 'Drinks', image: 'assets/images/icons/soft-drinks.png');
    var p10 = Product(
        id: 7, title: 'Ice Cream', image: 'assets/images/icons/ice-cream.png');
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
                backgroundColor: Color(0xFF2eb368),
                title: const Center(
                    child: Text(
                  'Categories',
                  style: TextStyle(color: Colors.white),
                ))),
            body: Container(
                color: backdropColor,
                child: Container(
                    margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.only(left: 20, top: 20),
                          child: Row(children: [
                            ProductItem(product: p1),
                            ProductItem(product: p2),
                            ProductItem(product: p3)
                          ]),
                        ),
                        Container(
                          padding: const EdgeInsets.only(left: 20, top: 20),
                          child: Row(children: [
                            ProductItem(product: p4),
                            ProductItem(product: p5),
                            ProductItem(product: p6)
                          ]),
                        ),
                        Container(
                          padding: const EdgeInsets.only(left: 20, top: 20),
                          child: Row(children: [
                            ProductItem(product: p7),
                            ProductItem(product: p8),
                            ProductItem(product: p9)
                          ]),
                        ),
                        Container(
                          padding: const EdgeInsets.only(left: 20, top: 20),
                          child: Row(children: [
                            ProductItem(product: p10),
                            ProductItem(product: p1),
                            ProductItem(product: p2)
                          ]),
                        ),
                        Container(
                          padding: const EdgeInsets.only(left: 20, top: 20),
                          child: Row(children: [
                            ProductItem(product: p3),
                            ProductItem(product: p4),
                            ProductItem(product: p5)
                          ]),
                        ),
                      ],
                    )))));
  }
}
