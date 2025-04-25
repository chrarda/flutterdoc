import 'package:flutter/material.dart';
import 'package:flutterdoc/Features/home/ui/login_screen.dart';
import 'package:flutterdoc/Features/onboarding/onboarding_screen.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case 'Routes.onBoardingScreen':
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());
      case 'Routes.loginScreen':
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                body: Center(
                    child: Text('No route defined for ${settings.name}'))));
    }
  }
}
