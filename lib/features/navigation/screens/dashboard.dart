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
                const SizedBox(
                  width: 8,
                ),
                const Icon(
                  Icons.notifications_none_rounded,
                  size: 28,
                ),
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              child: Wrap(
                spacing: 24,
                children: const [
                  CustomAvatar(
                    name: "Chirag",
                    iconData: Icons.videocam,
                    imageData: "assets/icons/ic_profilepic.png",
                    width: 10,
                    gap: 0,
                  ),
                  CustomAvatar(
                    name: "Chirag",
                    iconData: Icons.videocam,
                    imageData: "assets/icons/ic_profilepic.png",
                    width: 10,
                    gap: 0,
                  ),
                  CustomAvatar(
                    name: "Chirag",
                    iconData: Icons.videocam,
                    imageData: "assets/icons/ic_profilepic.png",
                    width: 10,
                    gap: 5,
                  ),
                  CustomAvatar(
                    name: "Chirag",
                    iconData: Icons.videocam,
                    imageData: "assets/icons/ic_profilepic.png",
                    width: 10,
                    gap: 0,
                  ),
                  CustomAvatar(
                    name: "Chirag",
                    iconData: Icons.videocam,
                    imageData: "assets/icons/ic_profilepic.png",
                    width: 10,
                    gap: 0,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: GlobalVariables.primaryButtonColor,
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
                            color: GlobalVariables.backgroundColor,
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Text(
                            "Purpose of Visit",
                            style: TextStyle(
                              color: GlobalVariables.backgroundColor,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.all(6),
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
                    color: GlobalVariables.backgroundColor,
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
                            color: GlobalVariables.backgroundColor,
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Text(
                            "from",
                            style: TextStyle(
                              color: GlobalVariables.backgroundColor,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          Icon(
                            Icons.edit_calendar_outlined,
                            color: GlobalVariables.backgroundColor,
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Text(
                            "to",
                            style: TextStyle(
                              color: GlobalVariables.backgroundColor,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          Icon(
                            Icons.person_add_alt_outlined,
                            color: GlobalVariables.backgroundColor,
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Text(
                            "guest",
                            style: TextStyle(
                              color: GlobalVariables.backgroundColor,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            GridView.count(
              padding: EdgeInsets.all(10),
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              crossAxisCount: 3,
              shrinkWrap: true,
              children: const [
                CustomCard(
                  iconData: "assets/icons/ic_hotels_&_lodges.png",
                  title: "Hotels & Lodges",
                ),
                CustomCard(
                  iconData: "assets/icons/ic_restaurants.png",
                  title: "Restaurant",
                ),
                CustomCard(
                  iconData: "assets/icons/ic_party_clubs.png",
                  title: "party Clubs",
                ),
                CustomCard(
                  iconData: "assets/icons/ic_coffee_cafes.png",
                  title: "Coffee Cafes",
                ),
                CustomCard(
                  iconData: "assets/icons/ic_bar_&_beer.png",
                  title: "Bar & Beer Shops",
                ),
                CustomCard(
                  iconData: "assets/icons/ic_hire_&_vehicle.png",
                  title: "Hire & Rent Vehicle",
                ),
                CustomCard(
                  iconData: "assets/icons/ic_hotels_&_lodges.png",
                  title: "Hotels & Lodges",
                ),
                CustomCard(
                  iconData: "assets/icons/ic_hotels_&_lodges.png",
                  title: "Hotels & Lodges",
                ),
                CustomCard(
                  iconData: "assets/icons/ic_view_sunset.png",
                  title: "View Sunset",
                ),
              ],
            ),
            const SizedBox(
              height: 24,
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
