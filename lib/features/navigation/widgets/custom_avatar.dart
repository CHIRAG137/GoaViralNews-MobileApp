import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import '../../../globalVariables.dart';

class CustomAvatar extends StatelessWidget {
  const CustomAvatar({
    super.key,
    required this.name,
    required this.iconData,
    required this.imageData,
    required this.width,
    required this.gap,
  });

  final String name;
  final IconData iconData;
  final String imageData;
  final double width;
  final double gap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            DottedBorder(
              borderType: BorderType.RRect,
              radius: Radius.circular(20),
              dashPattern: [width, gap],
              color: Colors.blue.shade700,
              strokeWidth: 2,
              child: Container(
                padding: EdgeInsets.all(2),
                child: Image.asset(
                  imageData,
                ),
              ),
            ),
            Positioned(
              right: 0,
              bottom: 0,
              child: Container(
                padding: EdgeInsets.all(4),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  color: Colors.blue.shade300,
                  border: Border.all(
                    color: GlobalVariables.backgroundColor,
                    width: 2,
                  ),
                ),
                child: Icon(
                  iconData,
                  color: GlobalVariables.backgroundColor,
                  size: 12,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          name,
          style: const TextStyle(
            color: GlobalVariables.primaryButtonColor,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
