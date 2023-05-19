import 'package:flutter/material.dart';

class CustomTripzie extends StatelessWidget {
  const CustomTripzie({
    super.key,
    required this.imageData,
    required this.title,
    required this.subTitle,
  });

  final String imageData;
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
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
            imageData,
          ),
          const SizedBox(
            width: 16,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  subTitle,
                  style: const TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Container(
                  width: 100,
                  child: Stack(
                    children: [
                      Image.asset(
                        'assets/icons/ic_avatar.png',
                        height: 30,
                      ), // Background image
                      Positioned(
                        top: 0,
                        left: 20,
                        child: Image.asset(
                          'assets/icons/ic_avatar.png',
                          height: 30,
                        ), // Image to be partially overlapped
                      ),
                      Positioned(
                        top: 0,
                        left: 40,
                        child: Image.asset(
                          'assets/icons/ic_avatar.png',
                          height: 30,
                        ), // Image to be partially overlapped
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
