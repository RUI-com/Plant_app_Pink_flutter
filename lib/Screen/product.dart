// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';

class Product extends StatelessWidget {
  final String name;
  final String price;
  final String image;
  const Product(
      {super.key,
      required this.image,
      required this.name,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Center(
          child: Image.asset(
        image,
        width: 300,
      )),
      SizedBox(
        height: 10,
      ),
      Padding(
        padding: EdgeInsets.only(left: 55),
        child: Text(
          name,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      SizedBox(
        height: 10,
      ),
      Padding(
        padding: EdgeInsets.only(left: 55, right: 20),
        child: Text(
          "More detaila bout product, that customor wants to know",
          style: TextStyle(
            fontSize: 14,
            color: Colors.black,
          ),
        ),
      ),
      Padding(
          padding: const EdgeInsets.only(left: 54, right: 17),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '\$$price',
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              Image.asset(
                "assets/images/basket icon.png",
                height: 50,
                width: 50,
              ),
            ],
          ))
    ]);
  }
}
