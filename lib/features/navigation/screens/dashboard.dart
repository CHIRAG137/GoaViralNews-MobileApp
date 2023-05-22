import 'package:flutter/material.dart';
import 'package:goaviralnews/features/navigation/widgets/custom_avatar.dart';
import 'package:goaviralnews/features/navigation/widgets/custom_card.dart';
import 'package:goaviralnews/globalVariables.dart';
import '../../../size_config.dart';

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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.symmetric(
          horizontal: 24,
          vertical: height / 12,
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
                  width: 8,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 12,
                    horizontal: 16,
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
                            children: const [
                              ImageIcon(
                                AssetImage("assets/icons/instagram.png"),
                                color: GlobalVariables.backgroundColor,
                                size: 12,
                              ),
                              SizedBox(
                                width: 8,
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
                          const SizedBox(
                            height: 8,
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
                      const SizedBox(
                        width: 8,
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
            const SizedBox(
              height: 24,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              child: Wrap(
                spacing: 24,
                children: const [
                  CustomAvatar(
                    name: "Chirag",
                    iconData: Icons.videocam,
                    imageData: "assets/icons/Group 43.png",
                    width: 10,
                    gap: 0,
                  ),
                  CustomAvatar(
                    name: "Chirag",
                    iconData: Icons.videocam,
                    imageData: "assets/icons/Group 43.png",
                    width: 10,
                    gap: 0,
                  ),
                  CustomAvatar(
                    name: "Chirag",
                    iconData: Icons.videocam,
                    imageData: "assets/icons/Group 43.png",
                    width: 10,
                    gap: 5,
                  ),
                  CustomAvatar(
                    name: "Chirag",
                    iconData: Icons.videocam,
                    imageData: "assets/icons/Group 43.png",
                    width: 10,
                    gap: 0,
                  ),
                  CustomAvatar(
                    name: "Chirag",
                    iconData: Icons.videocam,
                    imageData: "assets/icons/Group 43.png",
                    width: 10,
                    gap: 0,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: GlobalVariables.backgroundColor,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade400.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 8,
                    offset:
                        const Offset(0, 3), // Adjust the position of the shadow
                  ),
                ],
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: const [
                          Icon(
                            Icons.search_rounded,
                          ),
                          SizedBox(
                            width: 16,
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
                  const SizedBox(
                    height: 4,
                  ),
                  const Divider(
                    thickness: 1,
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: const [
                          Icon(
                            Icons.edit_calendar_outlined,
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Text(
                            "from",
                            style: TextStyle(),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          Icon(
                            Icons.edit_calendar_outlined,
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Text(
                            "to",
                            style: TextStyle(),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          Icon(
                            Icons.person_add_alt_outlined,
                          ),
                          SizedBox(
                            width: 16,
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
            const SizedBox(
              height: 32,
            ),
            SingleChildScrollView(
              padding: const EdgeInsets.all(8),
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 24,
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
                            const SizedBox(height: 4),
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
                                const SizedBox(
                                  width: 6,
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
                        const SizedBox(
                          width: 16,
                        ),
                        Image.asset("assets/images/dash1.png"),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 24,
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
                            const SizedBox(height: 4),
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
                                const SizedBox(
                                  width: 6,
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
                        const SizedBox(
                          width: 16,
                        ),
                        Image.asset("assets/images/dash1.png"),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 24,
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
                            const SizedBox(height: 4),
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
                                const SizedBox(
                                  width: 6,
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
                        const SizedBox(
                          width: 16,
                        ),
                        Image.asset("assets/images/dash1.png"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 32,
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
                  const SizedBox(
                    height: 16,
                  ),
                  SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Image.asset("assets/images/dashboard.png"),
                        const SizedBox(
                          width: 16,
                        ),
                        Image.asset("assets/images/dashboard.png"),
                        const SizedBox(
                          width: 16,
                        ),
                        Image.asset("assets/images/dashboard.png"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
