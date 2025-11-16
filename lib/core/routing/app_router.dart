import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterdoc/Features/home/ui/homme_screen.dart';
import 'package:flutterdoc/Features/login/logic/cubit/login_cubit.dart';
import 'package:flutterdoc/Features/login/ui/login_screen.dart';
import 'package:flutterdoc/Features/onboarding/onboarding_screen.dart';
import 'package:flutterdoc/Features/sign_up/logic/sign_up_cubit.dart';
import 'package:flutterdoc/core/di/dependency_injection.dart';
import 'package:flutterdoc/core/routing/routes.dart';
import 'package:flutterdoc/Features/sign_up/ui/sign_up_screen.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());
      case Routes.loginScreen:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => getIt<LoginCubit>(),
                  child: const LoginScreen(),
                ));
      case Routes.homeScreen:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => getIt<LoginCubit>(),
                  child: const HommeScreen(),
                ));
      case Routes.signUpScreen:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => getIt<SignUpCubit>(),
                  child: const SignupScreen(),
                ));
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                body: Center(
                    child: Text('No route defined for ${settings.name}'))));
    }
  }
}
