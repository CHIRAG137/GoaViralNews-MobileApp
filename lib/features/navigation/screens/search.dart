import 'package:flutter/material.dart';
import 'package:goaviralnews/features/navigation/widgets/custom_hotel_card.dart';
import 'package:goaviralnews/features/navigation/widgets/custom_scroll_button.dart';
import 'package:goaviralnews/globalVariables.dart';
import '../../../size_config.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  static const String routName = "/dashboard-page";

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                    onPressed: () {
                      // Navigator.pushNamed(context, router);
                    },
                  ),
                ),
                const Text(
                  "Stay In Goa",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                const Icon(
                  Icons.notifications_none_rounded,
                  size: 28,
                ),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: SingleChildScrollView(
                    child: Row(
                      children: [
                        CustomScrollButton(
                          iconData: Icons.home_outlined,
                          title: "Hotels",
                          color: Colors.blue.shade500,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        CustomScrollButton(
                          iconData: Icons.home_outlined,
                          title: "Hotels",
                          color: Colors.blue.shade500,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        CustomScrollButton(
                          iconData: Icons.home_outlined,
                          title: "Hotels",
                          color: Colors.blue.shade500,
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 32,
                  width: 36,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.blue.shade600),
                  child: Center(
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.filter_alt,
                        color: Colors.white,
                        size: 16,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: const [
                  CustomHotelCard(
                    hotelName: "Asteria Hotel",
                    location: "Wilora NT 0872, Australia",
                    views: "480 Active Views",
                    price: 165,
                    imageData: "assets/images/im_hotel.png",
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  CustomHotelCard(
                    hotelName: "Asteria Hotel",
                    location: "Wilora NT 0872, Australia",
                    views: "480 Active Views",
                    price: 165,
                    imageData: "assets/images/im_hotel.png",
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  CustomHotelCard(
                    hotelName: "Asteria Hotel",
                    location: "Wilora NT 0872, Australia",
                    views: "480 Active Views",
                    price: 165,
                    imageData: "assets/images/im_hotel.png",
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  CustomHotelCard(
                    hotelName: "Asteria Hotel",
                    location: "Wilora NT 0872, Australia",
                    views: "480 Active Views",
                    price: 165,
                    imageData: "assets/images/im_hotel.png",
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  CustomHotelCard(
                    hotelName: "Asteria Hotel",
                    location: "Wilora NT 0872, Australia",
                    views: "480 Active Views",
                    price: 165,
                    imageData: "assets/images/im_hotel.png",
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  CustomHotelCard(
                    hotelName: "Asteria Hotel",
                    location: "Wilora NT 0872, Australia",
                    views: "480 Active Views",
                    price: 165,
                    imageData: "assets/images/im_hotel.png",
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
