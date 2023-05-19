import 'package:flutter/material.dart';

class CustomTripzieCard extends StatelessWidget {
  const CustomTripzieCard({
    super.key,
    required this.title,
    required this.location,
    required this.imageData,
  });

  final String title;
  final String location;
  final String imageData;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          imageData,
        ),
        Positioned(
          bottom: 10,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 150,
                  child: Text(
                    title,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  location,
                  style: const TextStyle(
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
    );
  }
}
