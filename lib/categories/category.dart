import 'package:flutter/material.dart';
import 'package:online_shopping/constants.dart';

class Category extends StatefulWidget {
  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          CategoryProducts(
            press: (() {}),
            text: "Mens",
          ),
          CategoryProducts(
            press: (() {}),
            text: "Womens",
          ),
          CategoryProducts(
            press: (() {}),
            text: "Boys",
          ),
          CategoryProducts(
            press: (() {}),
            text: "Girls",
          ),
          CategoryProducts(
            press: (() {}),
            text: "Womens",
          ),
          CategoryProducts(
            press: (() {}),
            text: "Boys",
          ),
          CategoryProducts(
            press: (() {}),
            text: "Girls",
          ),
        ],
      ),
    );
  }
}

class CategoryProducts extends StatelessWidget {
  const CategoryProducts({
    Key? key,
    required this.text,
    required this.press,
  }) : super(key: key);
  final String text;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: GestureDetector(
        onTap: press,
        child: Container(
            height: 50,
            child: Chip(
                backgroundColor: kprimarycolor,
                label: Row(
                  children: [
                    Text(text),
                  ],
                ))),
      ),
    );
  }
}
