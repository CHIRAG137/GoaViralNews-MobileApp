import 'package:flutter/material.dart';
import 'package:goaviralnews/common/widgets/custom_appbar.dart';
import 'package:goaviralnews/globalVariables.dart';
import '../../../size_config.dart';

class AvatarPage extends StatefulWidget {
  const AvatarPage({super.key});

  static const String routName = "/avatar-page";

  @override
  State<AvatarPage> createState() => _AvatarPageState();
}

class _AvatarPageState extends State<AvatarPage> {
  String selectedVariant = 'green';

  Map<String, List<String>> imageLists = {
    'green': [
      'assets/icons/Group 32.png',
      'assets/icons/Group 33.png',
      'assets/icons/Group 34.png',
      'assets/icons/Group 35.png',
      'assets/icons/Group 36.png',
      'assets/icons/Group 37.png',
      'assets/icons/Group 38.png',
      'assets/icons/Group 39.png',
      'assets/icons/Group 40.png',
      'assets/icons/Group 41.png',
      'assets/icons/Group 42.png',
      'assets/icons/Group 43.png',
    ],
    'yellow': [
      'assets/icons/Group 44.png',
      'assets/icons/Group 45.png',
      'assets/icons/Group 46.png',
      'assets/icons/Group 47.png',
      'assets/icons/Group 48.png',
      'assets/icons/Group 49.png',
      'assets/icons/Group 50.png',
      'assets/icons/Group 51.png',
      'assets/icons/Group 52.png',
      'assets/icons/Group 53.png',
      'assets/icons/Group 54.png',
      'assets/icons/Group 55.png',
    ],
    'black': [
      'assets/icons/Group 56.png',
      'assets/icons/Group 57.png',
      'assets/icons/Group 58.png',
      'assets/icons/Group 59.png',
      'assets/icons/Group 60.png',
      'assets/icons/Group 61.png',
      'assets/icons/Group 62.png',
      'assets/icons/Group 63.png',
      'assets/icons/Group 64.png',
      'assets/icons/Group 65.png',
      'assets/icons/Group 66.png',
      'assets/icons/Group 67.png',
    ],
  };

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double width = SizeConfig.screenW!;
    double height = SizeConfig.screenH!;
    return Scaffold(
      backgroundColor: GlobalVariables.backgroundColor,
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
            vertical: 24,
          ),
          child: Column(
            children: [
              const CustomAppbar(
                title: "Select Avatar",
                router: "/create-profile-page",
              ),
              const SizedBox(
                height: 24,
              ),
              GridView.count(
                padding: const EdgeInsets.all(10),
                crossAxisSpacing: 16,
                mainAxisSpacing: 32,
                crossAxisCount: 3,
                shrinkWrap: true,
                children: imageLists[selectedVariant]?.map((imagePath) {
                      return Image.asset(
                        imagePath,
                      );
                    }).toList() ??
                    [],
              ),
              const SizedBox(
                height: 32,
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(48),
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text(
                      "Choose Variant",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedVariant = 'green';
                            });
                          },
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(24),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedVariant = 'yellow';
                            });
                          },
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              color: Colors.yellow.shade600,
                              borderRadius: BorderRadius.circular(24),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedVariant = 'black';
                            });
                          },
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(24),
                            ),
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
      ),
    );
  }
}
