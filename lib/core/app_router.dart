import 'package:doctor/core/routes.dart';
import 'package:doctor/features/login/login_view.dart';
import 'package:doctor/features/on_boarding/on_boarding_view.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route generateRoute(RouteSettings setteing) {
    switch (setteing.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (context) => OnBoardingView());

      case Routes.loginScreen:
        return MaterialPageRoute(builder: (context) => LoginView());

      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            body: Center(child: Text('No route defined for ${setteing.name}')),
          ),
        );
    }
  }
}
