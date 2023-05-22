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
  bool _noButtonClicked = false;

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
                        flagsButtonMargin: const EdgeInsets.symmetric(
                          horizontal: 8,
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
                    const SizedBox(
                      height: 24,
                    ),
                    Row(
                      children: [
                        Row(
                          children: [
                            const Text(
                              "Do you have ",
                              style: TextStyle(
                                fontSize: 16,
                                color: GlobalVariables.extraFadedTextColor,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Icon(
                              Icons.whatsapp_rounded,
                              size: 16,
                              color: Colors.lightGreenAccent.shade700,
                            ),
                            const Text(
                              " Whatsapp?",
                              style: TextStyle(
                                fontSize: 16,
                                color: GlobalVariables.extraFadedTextColor,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Row(
                          children: [
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: _noButtonClicked
                                    ? Colors.grey.shade200
                                    : Colors.lightGreenAccent.shade200,
                                elevation: 0,
                                textStyle: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 16,
                                  vertical: 8,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  "Yes",
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: _noButtonClicked
                                          ? Colors.grey
                                          : Colors.white),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  _noButtonClicked = true;
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: _noButtonClicked
                                    ? Colors.red
                                    : Colors.grey.shade200,
                                elevation: 0,
                                textStyle: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 16,
                                  vertical: 8,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  "No",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: _noButtonClicked
                                        ? Colors.white
                                        : Colors.grey,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 16,
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
