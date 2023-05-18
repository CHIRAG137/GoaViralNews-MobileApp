import 'dart:ffi';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:goaviralnews/size_config.dart';
import 'package:intl/intl.dart';

class TripSectionScreen extends StatefulWidget {
  const TripSectionScreen({super.key});

  @override
  State<TripSectionScreen> createState() => _TripSectionScreenState();
}

class _TripSectionScreenState extends State<TripSectionScreen> {

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double width = SizeConfig.screenW!;
    double height = SizeConfig.screenH!;

    final currentDate = DateTime.now();
    final currentDay = DateFormat('EEEE').format(currentDate);

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
                    "Tripzie",
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 24),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.notification_add_outlined),
                  ),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "🚙 Here’s your Personalised Traveling Plan",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "Showing for $currentDay.",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 24,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                child: Row(
                  children: [
                    Stack(
                      children: [
                        Image.asset(
                          "assets/images/image13.png",
                        ),
                        Positioned(
                          bottom: 10,
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 150,
                                  child: Text(
                                    "The Beauty of amazing India!",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  "Kashmir, India",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white,
                                    fontSize: 10,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 24,
                    ),
                    Stack(
                      children: [
                        Image.asset(
                          "assets/images/image14.png",
                        ),
                        Positioned(
                          bottom: 10,
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 150,
                                  child: Text(
                                    "Explore best sunsets in maldives",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  "Maldives",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white,
                                    fontSize: 10,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: width / 10,
                  vertical: 16,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.grey.shade100,
                ),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  child: Row(
                    children: [
                      Container(
                        child: Column(
                          children: [
                            Text(
                              "Mo",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "7",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 24,
                      ),
                      Container(
                        child: Column(
                          children: [
                            Text(
                              "Tu",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "8",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 24,
                      ),
                      Container(
                        child: Column(
                          children: [
                            Text(
                              "We",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "9",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 24,
                      ),
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Column(
                          children: [
                            Text(
                              "Th",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Colors.white),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "10",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 24,
                      ),
                      Container(
                        child: Column(
                          children: [
                            Text(
                              "Fr",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "11",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 24,
                      ),
                      Container(
                        child: Column(
                          children: [
                            Text(
                              "Sa",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "12",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 24,
              ),
              SingleChildScrollView(
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade300,
                            blurRadius: 8.0, // soften the shadow
                            spreadRadius: 4.0, //extend the shadow
                          )
                        ],
                      ),
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/images/image16.png",
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 32),
                            child: Column(
                              children: [
                                Text(
                                  "Outdoor Wolfs",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  "Hassan, Akram",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                  ),
                                ),
                                Stack(
                                  children: [
                                    CircleAvatar(
                                      radius: 16,
                                      backgroundImage: AssetImage(
                                          'assets/images/image11.png'),
                                    ),
                                    Positioned(
                                      left: 20,
                                      child: CircleAvatar(
                                        radius: 16,
                                        backgroundImage: AssetImage(
                                            'assets/images/image11.png'),
                                      ),
                                    ),
                                    Positioned(
                                      left: 20,
                                      child: CircleAvatar(
                                        radius: 16,
                                        backgroundImage: AssetImage(
                                            'assets/images/image2.png'),
                                      ),
                                    ),
                                  ],
                                )
                              ],
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
