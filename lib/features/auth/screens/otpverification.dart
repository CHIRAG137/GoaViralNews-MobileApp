import 'package:flutter/material.dart';
import 'package:goaviralnews/common/widgets/custom_appbar.dart';
import 'package:goaviralnews/common/widgets/custom_elevatedbutton.dart';
import 'package:goaviralnews/globalVariables.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import '../../../size_config.dart';

class OtpVerificationPage extends StatefulWidget {
  const OtpVerificationPage({super.key});

  static const String routName = "/otp-verification-page";

  @override
  State<OtpVerificationPage> createState() => _OtpVerificationPageState();
}

class _OtpVerificationPageState extends State<OtpVerificationPage> {
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
                        router: "/onboarding-page", title: "Login"),
                    const SizedBox(
                      height: 24,
                    ),
                    const Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Please sign in to continue...",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 48,
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
                    const Text(
                      "Enter the Verification Code we just sent on your given number.",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(
                      height: 36,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: List.generate(4, (index) {
                        return SizedBox(
                          width: 50,
                          child: TextField(
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            style: const TextStyle(fontSize: 24),
                            decoration: const InputDecoration(
                              contentPadding: EdgeInsets.symmetric(vertical: 8),
                              border: OutlineInputBorder(),
                              counterText: "",
                            ),
                            maxLength: 1,
                            onChanged: (value) {
                              if (value.isNotEmpty) {
                                if (index < 3) {
                                  FocusScope.of(context).nextFocus();
                                } else {
                                  // Hide keyboard on last digit
                                  FocusScope.of(context).unfocus();
                                }
                              }
                            },
                          ),
                        );
                      }),
                    ),
                    const SizedBox(height: 32),
                    Container(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "Didn't Received Code ?",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: GlobalVariables.extraFadedTextColor,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              const SizedBox(
                                width: 12,
                              ),
                              ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      GlobalVariables.secondaryButtonColor,
                                  elevation: 0,
                                  textStyle: const TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 12, vertical: 4),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                ),
                                child: const Text(
                                  "Click here to resend",
                                  style: TextStyle(
                                    color: GlobalVariables.fadedTextColor,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          const Text(
                            "You will receive an SMS verification that may apply message and data rates.",
                            style: TextStyle(
                              fontSize: 10,
                              color: GlobalVariables.extraFadedTextColor,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const CustomElevatedButton(
                title: "Verify OTP",
                router: "/create-profile-page",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
