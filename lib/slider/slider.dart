import 'package:flutter/material.dart';
import 'package:another_carousel_pro/another_carousel_pro.dart';
import 'package:online_shopping/constants.dart';

class SliderProduct extends StatefulWidget {
  @override
  State<SliderProduct> createState() => _SliderProductState();
}

class _SliderProductState extends State<SliderProduct> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          height: 200,
          child: Carousel(
            borderRadius: true,
            radius: const Radius.circular(20),
            dotBgColor: Colors.transparent,
            dotIncreasedColor: kprimarycolor,
            animationCurve: Curves.fastOutSlowIn,
            animationDuration: const Duration(
              milliseconds: 800,
            ),
            images: [
              Image.network(
                "https://images.unsplash.com/photo-1524591431555-cc7876d14adf?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8c2xpZGVyfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60",
                fit: BoxFit.cover,
              ),
              Image.network(
                "https://images.unsplash.com/photo-1554941426-e9604e34bc94?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8c2xpZGVyfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60",
                fit: BoxFit.cover,
              ),
              Image.network(
                "https://images.unsplash.com/photo-1532716377393-5ffbea548d05?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8c2xpZGVyfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60",
                fit: BoxFit.cover,
              ),
            ],
          )),
    );
  }
}
