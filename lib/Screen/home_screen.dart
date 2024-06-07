// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screen/detailscreen.dart';
import 'package:flutter_application_1/Screen/product.dart';
import 'package:flutter_application_1/Utils/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Stack(
      children: [
        Row(children: [
          sideBar(),
          bodyParts(size, context),
        ]),
        Positioned(
            top: 100,
            left: 29,
            child: Text(
              "Plants",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 35,
                  fontFamily: "MyFont"),
            )),
        Positioned(
          top: 45,
          right: 10,
          child: Icon(
            Icons.search,
            color: Colors.black,
            size: 40,
          ),
        )
      ],
    ));
  }

  Container bodyParts(Size size, BuildContext context) {
    return Container(
      width: size.width * 0.8,
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailScreen1(),
                  ),
                );
              },
              child: Hero(
                tag: "flower1",
                child: Product(
                  image: "assets/images/flower1.png",
                  name: "House Shape Close",
                  price: "45",
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailScreen2(),
                  ),
                );
              },
              child: Hero(
                tag: "flower2",
                child: Product(
                  image: "assets/images/flower2.png",
                  name: "Glass Water",
                  price: "60",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Expanded sideBar() {
    return Expanded(
        child: Container(
      color: secondaryColor,
      child: Column(children: [
        Padding(
          padding: EdgeInsets.only(left: 8, top: 28),
          child: Image.asset(
            "assets/images/more icon.png",
            width: 60,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: EdgeInsets.only(left: 16),
          child: Text(
            "Green",
            style: TextStyle(
              fontSize: 15,
            ),
          ),
        ),
        SizedBox(
          height: 70,
        ),
        Padding(
          padding: EdgeInsets.only(right: 14),
          child: RotatedBox(
            quarterTurns: 3,
            child: RichText(
                text: TextSpan(children: [
              TextSpan(
                text: ".",
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: primaryColor),
              ),
              TextSpan(
                  text: "Shape Class", style: TextStyle(color: primaryColor))
            ])),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: EdgeInsets.only(left: 8),
          child: RotatedBox(
            quarterTurns: 3,
            child: Text(
              "Indore Plants",
              style: TextStyle(color: Colors.black),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: EdgeInsets.only(left: 8),
          child: RotatedBox(
            quarterTurns: 3,
            child: Text(
              "Indore Plants",
              style: TextStyle(color: Colors.black),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(right: 16, top: 80),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
              color: primaryColor,
            ),
            width: 60,
            height: 70,
            child: Icon(
              Icons.home_filled,
              color: Colors.white,
              size: 30,
            ),
          ),
        )
      ]),
    ));
  }
}
