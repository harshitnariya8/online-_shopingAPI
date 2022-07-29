import 'dart:convert';
import 'dart:ffi';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:online_shopping/constants.dart';
import 'package:http/http.dart' as http;
import 'package:online_shopping/pages/detailscreen.dart';

class Products extends StatefulWidget {
  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  List jsondata = [];

  @override
  void initState() {
    jsondata;
    super.initState();
  }

  getProducts() async {
    var response =
        await http.get(Uri.parse("https://fakestoreapi.com/products"));
    jsondata = jsonDecode(response.body);
    print(jsondata);
    return jsondata;
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: FutureBuilder(
        future: getProducts(),
        builder: (context, snapshot) {
          return GridView.builder(
              primary: false,
              shrinkWrap: true,
              itemCount: jsondata.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, childAspectRatio: 0.70),
              itemBuilder: (context, index) => RecentSingleproducts(
                    //producct: jsondata[index],
                    // press: () => Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => DetailPage(jsondata[index]))),
                    recent_single_prod_name: jsondata[index]['title'],
                    recent_single_prod_image: jsondata[index]['image'],
                    recent_single_prod_price: jsondata[index]['price'],
                    recent_single_prod_desc: jsondata[index]['Desc'],
                  ));
        },
      ),
    );
  }
}

class Product {
  dynamic title;
  dynamic price;
  dynamic image;
  dynamic Desc;

  Product(this.title, this.Desc, this.image, this.price);
}

class RecentSingleproducts extends StatelessWidget {
  final recent_single_prod_name;
  final recent_single_prod_image;
  final recent_single_prod_price;
  final recent_single_prod_desc;
  //final Function press;
  // final Product producct;

  RecentSingleproducts({
    this.recent_single_prod_name,
    this.recent_single_prod_image,
    this.recent_single_prod_price,
    this.recent_single_prod_desc,
    this.islike = false,
    //required this.press,
    //   required this.producct,
  });

  bool islike;

  // getpage(){
  //   Navigator.push(context, MaterialPageRoute(builder: ()))
  // }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      //onTap: press(),
      child: Column(
        children: <Widget>[
          Container(
              height: 180,
              width: 160,
              // decoration: BoxDecoration(
              //   color: kprimarycolor,
              // ),
              child: Image.network(
                recent_single_prod_image,
                // fit: BoxFit.cover,
              )),
          ListTile(
            title: Text(
              '$recent_single_prod_name',
              softWrap: true,
              overflow: TextOverflow.ellipsis,
            ),
            subtitle: Text("Rs. $recent_single_prod_price"),
            trailing: Container(
              height: 30,
              width: 30,
              child: IconButton(
                icon: Icon(
                    islike ? Icons.favorite : Icons.favorite_border_outlined),
                onPressed: () {
                  setState() {
                    islike = !islike;
                  }
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
