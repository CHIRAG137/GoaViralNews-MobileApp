import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:goaviralnews/size_config.dart';

class PhotoGalleryScreen extends StatefulWidget {
  const PhotoGalleryScreen({super.key});

  @override
  State<PhotoGalleryScreen> createState() => _PhotoGalleryScreenState();
}

class _PhotoGalleryScreenState extends State<PhotoGalleryScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double width = SizeConfig.screenW!;
    double height = SizeConfig.screenH!;
    return Scaffold(
      backgroundColor: Colors.white,
      body: WillPopScope(
        onWillPop: () async {
          // Return true to allow the user to go back
          // Return false to prevent the user from going back
          return false;
        },
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(
            horizontal: 24,
            vertical: height / 12,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color(0xFFE8ECF4),
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    child: IconButton(
                      // ignore: prefer_const_constructors
                      icon: Icon(
                        Icons.menu,
                      ),
                      onPressed: () {},
                    ),
                  ),
                  // ignore: prefer_const_constructors
                  Text(
                    "Galleria",
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 24),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.notification_add_outlined),
                  ),
                ],
              ),
              SizedBox(height: 16,),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xFFffffff),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade300,
                      blurRadius: 8.0, // soften the shadow
                      spreadRadius: 4.0, //extend the shadow
                    )
                  ],
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Image.asset("assets/images/image1.png"),
                        Column(
                          children: [
                            Image.asset("assets/images/image2.png"),
                            Image.asset("assets/images/image3.png"),
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16,vertical: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Hotels & Lodges",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade400,
                              borderRadius: BorderRadius.circular(16.0),
                            ),
                            child: IconButton(
                              // ignore: prefer_const_constructors
                              icon: Icon(
                                Icons.add,
                                size: 20,
                                color: Colors.white,
                              ),
                              onPressed: () {},
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 24,),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xFFffffff),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade300,
                      blurRadius: 8.0, // soften the shadow
                      spreadRadius: 4.0, //extend the shadow
                    )
                  ],
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Image.asset("assets/images/image4.png"),
                        Column(
                          children: [
                            Image.asset("assets/images/image5.png"),
                            Image.asset("assets/images/image6.png"),
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16,vertical: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Tourist Place",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade400,
                              borderRadius: BorderRadius.circular(16.0),
                            ),
                            child: IconButton(
                              // ignore: prefer_const_constructors
                              icon: Icon(
                                Icons.add,
                                size: 20,
                                color: Colors.white,
                              ),
                              onPressed: () {},
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 24,),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xFFffffff),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade300,
                      blurRadius: 8.0, // soften the shadow
                      spreadRadius: 4.0, //extend the shadow
                    )
                  ],
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Image.asset("assets/images/image7.png"),
                        Column(
                          children: [
                            Image.asset("assets/images/image8.png"),
                            Image.asset("assets/images/image9.png"),
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16,vertical: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Hotels & Lodges",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade400,
                              borderRadius: BorderRadius.circular(16.0),
                            ),
                            child: IconButton(
                              // ignore: prefer_const_constructors
                              icon: Icon(
                                Icons.add,
                                size: 20,
                                color: Colors.white,
                              ),
                              onPressed: () {},
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 24,),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xFFffffff),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade300,
                      blurRadius: 8.0, // soften the shadow
                      spreadRadius: 4.0, //extend the shadow
                    )
                  ],
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Image.asset("assets/images/image10.png"),
                        Column(
                          children: [
                            Image.asset("assets/images/image11.png"),
                            Image.asset("assets/images/image12.png"),
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16,vertical: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Party, Clubs & Cafes",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade400,
                              borderRadius: BorderRadius.circular(16.0),
                            ),
                            child: IconButton(
                              // ignore: prefer_const_constructors
                              icon: Icon(
                                Icons.add,
                                size: 20,
                                color: Colors.white,
                              ),
                              onPressed: () {},
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
