import 'package:flutter/material.dart';
import 'package:goaviralnews/size_config.dart';

class CreateProfileScreen extends StatefulWidget {
  const CreateProfileScreen({super.key});

  @override
  State<CreateProfileScreen> createState() => _CreateProfileScreenState();
}

class _CreateProfileScreenState extends State<CreateProfileScreen> {
  @override
  Widget build(BuildContext context) { 
    SizeConfig().init(context);
    double width = SizeConfig.screenW!;
    double height = SizeConfig.screenH!;
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        padding: EdgeInsets.all(24),
        child: Column(
          children: [
            Text(
              "Bio-Data",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color(0xFFE8ECF4),
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  child: IconButton(
                    // ignore: prefer_const_constructors
                    icon: Icon(
                      Icons.arrow_back_ios_new_rounded,
                    ),
                    onPressed: (){}
                  ),
                ),
              ],
            ),
            CircleAvatar(
              backgroundColor: Colors.red,
              radius: 60,
              child: Image.asset(
                "assets/images/logo.png",
                height: 50,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Chirag Goel",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  width: 16,
                ),
                Container(
                  color: Colors.black,
                  height: 18,
                  width: 18,
                  child: Icon(Icons.edit, color: Colors.white, size: 18),
                ),
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "chiraggoel@gmail.com",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(
                  width: 16,
                ),
                Container(
                  color: Colors.grey,
                  height: 14,
                  width: 14,
                  child: Icon(
                    Icons.edit,
                    color: Colors.white,
                    size: 14,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 36,
            ),
            TextFormField(
              decoration: InputDecoration(hintText: "What's your first name?"),
            ),
            SizedBox(
              height: 32,
            ),
            TextFormField(
              decoration: InputDecoration(hintText: "And your last name?"),
            ),
            SizedBox(
              height: 32,
            ),
            TextFormField(
              decoration: InputDecoration(hintText: "Select gender"),
            ),
            SizedBox(
              height: 32,
            ),
            TextFormField(
              decoration:
                  InputDecoration(hintText: "What is your date of birth?"),
            ),
            SizedBox(
              height: height / 8,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF1E232C),
                elevation: 0,
                textStyle: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
                padding:
                    EdgeInsets.symmetric(horizontal: width / 3.6, vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              child: const Text("Update Profile"),
            ),
          ],
        ),
      )),
    );
  }
}
