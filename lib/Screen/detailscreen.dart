// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screen/product_detail.dart';

class DetailScreen1 extends StatelessWidget {
  const DetailScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return const Hero(
      tag: "flower1",
      child: ProductDetail(
          image: "assets/images/flower1.png",
          name: "House Shape \n ClosePlant",
          price: "\$45"),
    );
  }
}

class DetailScreen2 extends StatelessWidget {
  const DetailScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return const Hero(
      tag: "flower2",
      child: ProductDetail(
          image: "assets/images/flower2.png",
          name: "Glass Water",
          price: "\$60"),
    );
  }
}
