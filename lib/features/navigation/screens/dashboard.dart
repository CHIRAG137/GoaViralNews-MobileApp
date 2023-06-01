import 'package:flutter/material.dart';
import 'package:goaviralnews/features/navigation/widgets/add_story_avatar.dart';
import 'package:goaviralnews/features/navigation/widgets/black_avatar.dart';
import 'package:goaviralnews/features/navigation/widgets/custom_card.dart';
import 'package:goaviralnews/features/navigation/widgets/dotted_green_avatar.dart';
import 'package:goaviralnews/features/navigation/widgets/purple_avatar.dart';
import 'package:goaviralnews/globalVariables.dart';
import '../../../size_config.dart';
import '../widgets/yellow_avatar.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  static const String routName = "/dashboard-page";

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double width = SizeConfig.screenW!;
    double height = SizeConfig.screenH!;
    return Scaffold(
      backgroundColor: GlobalVariables.backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          padding: EdgeInsets.symmetric(
            horizontal: width * 0.05,
            vertical: height * 0.03,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: GlobalVariables.primaryIconButtonBorderColor,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    child: IconButton(
                      // ignore: prefer_const_constructors
                      icon: Image.asset("assets/icons/ic_avatar.png"),
                      onPressed: () {},
                    ),
                  ),
                  // ignore: prefer_const_constructors
                  SizedBox(
                    width: width * 0.025,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: width * 0.05,
                      vertical: height * 0.015,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      color: GlobalVariables.primaryButtonColor,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                ImageIcon(
                                  AssetImage("assets/icons/instagram.png"),
                                  color: GlobalVariables.backgroundColor,
                                  size: 12,
                                ),
                                SizedBox(
                                  width: width * 0.025,
                                ),
                                Text(
                                  "Follow us on instagram",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 10,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: height * 0.01,
                            ),
                            const Text(
                              "Share your reels with us and attract Discount😊",
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                                fontSize: 8,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          width: width * 0.025,
                        ),
                        Container(
                          height: 32,
                          width: 36,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.blue.shade600),
                          child: Center(
                            child: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.arrow_forward,
                                color: Colors.white,
                                size: 16,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.035,
              ),
              SingleChildScrollView(
                padding: EdgeInsets.all(1),
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                child: Wrap(
                  spacing: width * 0.05,
                  children: const [
                    AddStoryAvatar(
                      name: "Add Story",
                      iconData: Icons.videocam,
                      imageData: "assets/icons/Group 43.png",
                      width: 10,
                      gap: 0,
                    ),
                    YellowAvatar(
                      name: "Chirag",
                      iconData: Icons.videocam,
                      imageData: "assets/icons/Group 51.png",
                      width: 10,
                      gap: 0,
                    ),
                    DottedGreenAvatar(
                      name: "Chirag",
                      iconData: Icons.lightbulb,
                      imageData: "assets/icons/Group 34.png",
                      width: 10,
                      gap: 10,
                    ),
                    BlackAvatar(
                      name: "Chirag",
                      iconData: Icons.lightbulb,
                      imageData: "assets/icons/Group 61.png",
                      width: 10,
                      gap: 10,
                    ),
                    PurpleAvatar(
                      name: "Chirag",
                      iconData: Icons.videocam,
                      imageData: "assets/icons/Group 48.png",
                      width: 10,
                      gap: 10,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.025,
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: width * 0.05,
                  vertical: height * 0.015,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: GlobalVariables.backgroundColor,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade400.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 8,
                      offset: const Offset(
                          0, 3), // Adjust the position of the shadow
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.search_rounded,
                            ),
                            SizedBox(
                              width: width * 0.025,
                            ),
                            Text(
                              "Purpose of Visit",
                              style: TextStyle(),
                            ),
                          ],
                        ),
                        Container(
                          padding: const EdgeInsets.all(6),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.0),
                            color: Colors.blue,
                          ),
                          child: const Icon(
                            Icons.filter_alt,
                            color: GlobalVariables.backgroundColor,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    const Divider(
                      thickness: 1,
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.edit_calendar_outlined,
                            ),
                            SizedBox(
                              width: width * 0.035,
                            ),
                            Text(
                              "from",
                              style: TextStyle(),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.edit_calendar_outlined,
                            ),
                            SizedBox(
                              width: width * 0.035,
                            ),
                            Text(
                              "to",
                              style: TextStyle(),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.person_add_alt_outlined,
                            ),
                            SizedBox(
                              width: width * 0.035,
                            ),
                            Text(
                              "guest",
                              style: TextStyle(),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.035,
              ),
              SingleChildScrollView(
                padding: const EdgeInsets.all(8),
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: width * 0.05,
                        vertical: height * 0.025,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: const Offset(
                                0, 3), // Adjust the position of the shadow
                          ),
                        ],
                        color: const Color(
                          0xFF6CD3FF,
                        ),
                      ),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "local",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                ),
                              ),
                              const Text(
                                "Stay",
                                style: TextStyle(
                                  fontSize: 32,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                height: height * 0.015,
                              ),
                              Row(
                                children: [
                                  Container(
                                    width: 64,
                                    child: const Text(
                                      "Hotels & Lodges",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: width * 0.015,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(24),
                                      color: Colors.white,
                                    ),
                                    child: const Icon(
                                      Icons.arrow_forward,
                                      size: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            width: width * 0.035,
                          ),
                          Image.asset("assets/images/dash1.png"),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: width * 0.05,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: width * 0.05,
                        vertical: height * 0.025,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: const Offset(
                                0, 3), // Adjust the position of the shadow
                          ),
                        ],
                        color: const Color(
                          0xFF6CD3FF,
                        ),
                      ),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "local",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                ),
                              ),
                              const Text(
                                "Stay",
                                style: TextStyle(
                                  fontSize: 32,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                height: height * 0.015,
                              ),
                              Row(
                                children: [
                                  Container(
                                    width: 64,
                                    child: const Text(
                                      "Hotels & Lodges",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: width * 0.015,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(24),
                                      color: Colors.white,
                                    ),
                                    child: const Icon(
                                      Icons.arrow_forward,
                                      size: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            width: width * 0.035,
                          ),
                          Image.asset("assets/images/dash1.png"),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: width * 0.05,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: width * 0.05,
                        vertical: height * 0.025,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: const Offset(
                                0, 3), // Adjust the position of the shadow
                          ),
                        ],
                        color: const Color(
                          0xFF6CD3FF,
                        ),
                      ),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "local",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                ),
                              ),
                              const Text(
                                "Stay",
                                style: TextStyle(
                                  fontSize: 32,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                height: height * 0.015,
                              ),
                              Row(
                                children: [
                                  Container(
                                    width: 64,
                                    child: const Text(
                                      "Hotels & Lodges",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: width * 0.015,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(24),
                                      color: Colors.white,
                                    ),
                                    child: const Icon(
                                      Icons.arrow_forward,
                                      size: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            width: width * 0.035,
                          ),
                          Image.asset("assets/images/dash1.png"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.035,
              ),
              Container(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Hot Locations",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "See All",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.025,
                    ),
                    SingleChildScrollView(
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Stack(
                            children: [
                              Container(
                                child:
                                    Image.asset("assets/images/dashboard1.png"),
                              ),
                              Positioned(
                                top: 10,
                                left: 10,
                                child: Text(
                                  "4 KM AWAY",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 10,
                                left: 10,
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.location_on_sharp,
                                      size: 10,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      width: 2,
                                    ),
                                    Text(
                                      "Dudhsagar Falls",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: width * 0.035,
                          ),
                          Stack(
                            children: [
                              Container(
                                child:
                                    Image.asset("assets/images/dashboard2.png"),
                              ),
                              Positioned(
                                top: 10,
                                left: 10,
                                child: Text(
                                  "6.2 KM Away",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 10,
                                left: 10,
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.location_on_sharp,
                                      size: 10,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      width: 2,
                                    ),
                                    Text(
                                      "Basilica of Bom Jesus",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: width * 0.035,
                          ),
                          Stack(
                            children: [
                              Container(
                                child:
                                    Image.asset("assets/images/dashboard2.png"),
                              ),
                              Positioned(
                                top: 10,
                                left: 10,
                                child: Text(
                                  "6.2 KM Away",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 10,
                                left: 10,
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.location_on_sharp,
                                      size: 10,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      width: 2,
                                    ),
                                    Text(
                                      "Basilica of Bom Jesus",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
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
