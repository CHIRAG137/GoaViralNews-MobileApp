import 'package:flutter/material.dart';
import 'package:goaviralnews/features/auth/screens/login.dart';
import 'package:goaviralnews/features/auth/screens/otpverification.dart';
import 'package:goaviralnews/features/auth/screens/register.dart';
import 'package:goaviralnews/features/onboarding/screens/onboarding.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case OnboardingPage.routName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const OnboardingPage(),
      );
      case LoginPage.routName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const LoginPage(),
      );
      case RegisterPage.routName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const RegisterPage(),
      );
    case OtpVerificationPage.routName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const OtpVerificationPage(),
      );
    default:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const Scaffold(
          body: Center(
            child: Text("This Screen does not exist"),
          ),
        ),
      );
  }
}
