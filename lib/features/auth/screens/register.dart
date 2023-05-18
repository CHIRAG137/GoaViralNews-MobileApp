import 'package:flutter/material.dart';
import 'package:goaviralnews/common/widgets/custom_appbar.dart';
import 'package:goaviralnews/common/widgets/custom_elevatedbutton.dart';
import 'package:goaviralnews/globalVariables.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import '../../../size_config.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  static const String routName = "/register-page";

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Column(
                  children: [
                    const CustomAppbar(
                      title: "Create Account",
                      router: "/onboarding-page",
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    const Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "An all-in-one platform that helps you plan the perfect Goa vacation in just a few clicks.",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height / 12,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 6),
                      child: IntlPhoneField(
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
                    const SizedBox(
                      height: 24,
                    ),
                    const Text(
                      "You will receive an SMS verification that may apply message and data rates.",
                      style: TextStyle(
                        fontSize: 12,
                        color: GlobalVariables.extraFadedTextColor,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: const CustomElevatedButton(
                  title: "Verify Number",
                  router: "/otp-verification-page",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
