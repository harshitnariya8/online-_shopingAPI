import 'package:flutter/material.dart';
import 'package:online_shopping/categories/category.dart';
import 'package:online_shopping/constants.dart';
import 'package:online_shopping/pages/recent%20products.dart';
import 'package:online_shopping/slider/slider.dart';

class Homebody extends StatefulWidget {
  const Homebody({Key? key}) : super(key: key);

  @override
  State<Homebody> createState() => _HomebodyState();
}

class _HomebodyState extends State<Homebody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: Builder(
                      builder: (context) => IconButton(
                        icon: Icon(Icons.dashboard),
                        onPressed: () {
                          Scaffold.of(context).openDrawer();
                        },
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Text("User"),
                      Text(
                        "Location",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      )
                    ],
                  ),
                  CircleAvatar(
                    backgroundColor: kprimarycolor,
                  )
                ],
              ),
              SingleChildScrollView(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                              padding: EdgeInsets.only(bottom: 6),
                              height: 40,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(50),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black38, blurRadius: 4)
                                  ]),
                              child: TextField(
                                decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide.none),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                    )
                                    //       prefixIcon:Icon(Icons.search),
                                    ),
                              )),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: kprimarycolor,
                              borderRadius: BorderRadius.circular(20)),
                          child: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.sort_by_alpha)),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                child: Container(
                    child: Column(
                  children: [
                    SliderProduct(),
                    Category(),
                    Container(child: Products()),
                  ],
                )),
              ),
            ]),
          ),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
