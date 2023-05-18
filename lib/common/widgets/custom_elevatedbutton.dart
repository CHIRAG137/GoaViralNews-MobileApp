import 'package:flutter/material.dart';
import 'package:goaviralnews/globalVariables.dart';
import '../../size_config.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton(
      {super.key, required this.router, required this.title});
  final String router;
  final String title;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double width = SizeConfig.screenW!;
    double height = SizeConfig.screenH!;
    return ElevatedButton(
      onPressed: () {
        Navigator.pushNamed(context, router);
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: GlobalVariables.primaryButtonColor,
        elevation: 0,
        textStyle: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: width / 3.8,
          vertical: 16,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: Container(
        width: width / 3,
        child: Center(
          child: Text(title),
        ),
      ),
    );
  }
}
