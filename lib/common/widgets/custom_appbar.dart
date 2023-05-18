import 'package:flutter/material.dart';
import 'package:goaviralnews/globalVariables.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key, required this.router, required this.title});
  final String router;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
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
            icon: Icon(
              Icons.arrow_back_ios_new_rounded,
            ),
            onPressed: () {
              Navigator.pushNamed(context, router);
            },
          ),
        ),
        // ignore: prefer_const_constructors
        SizedBox(
          width: 16,
        ),
        Text(
          title,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w900,
          ),
        ),
      ],
    );
  }
}
