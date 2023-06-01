import 'package:flutter/material.dart';
import 'package:goaviralnews/common/widgets/custom_appbar.dart';
import 'package:goaviralnews/common/widgets/custom_elevatedbutton.dart';
import 'package:goaviralnews/globalVariables.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import '../../../size_config.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  static const String routName = "/login-page";

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double width = SizeConfig.screenW!;
    double height = SizeConfig.screenH!;
    return Scaffold(
      backgroundColor: GlobalVariables.backgroundColor,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: width * 0.05,
            vertical: height * 0.03,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Column(
                  children: [
                    const CustomAppbar(
                      title: "Login",
                      router: "/onboarding-page",
                    ),
                    SizedBox(
                      height: height * 0.025,
                    ),
                    const Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Please sign in to continue....",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.08,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 6),
                      child: IntlPhoneField(
                        flagsButtonMargin: EdgeInsets.symmetric(
                          horizontal: width * 0.02,
                        ),
                        decoration: const InputDecoration(
                          hintText: 'Mobile Number',
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: GlobalVariables.fadedTextColor,
                              width: 0.5,
                            ),
                          ),
                        ),
                        initialCountryCode: 'IN',
                        onChanged: (phone) {
                          print(phone.completeNumber);
                          print(phone.countryCode);
                          print(phone.number);
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: CustomElevatedButton(
                  title: "Verify Number",
                  router: "/otp-verification-page",
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      "/otp-verification-page",
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
