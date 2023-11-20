import 'package:flutter/material.dart';
import 'package:medical_app/core/routing/routes.dart';
import 'package:medical_app/features/login/ui/login_screen.dart';
import 'package:medical_app/features/on_boarding/onboarding_screen.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    final arguments = settings.arguments;
    switch (settings.name) {
      case Routes.onBoardingScreen:
        // The initial route for your app
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());
      case Routes.loginScreen:
        // Navigate to the second screen
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      // Add more cases for additional routes as needed
      default:
        // If the route is not defined, you can navigate to an error page
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                      child: Text("No defined route for : ${settings.name}")),
                ));
    }
  }
}
