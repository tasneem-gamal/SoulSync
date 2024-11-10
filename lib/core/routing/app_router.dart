import 'package:flutter/material.dart';
import 'package:soulsync/core/routing/routes.dart';
import 'package:soulsync/features/Auth/login/ui/login_view.dart';
import 'package:soulsync/features/on_boarding/on_boarding_view.dart';

class AppRouter {
  Route? generateRoutes(RouteSettings settings){
    //final argument = settings.name;
    switch(settings.name){
      case Routes.onBoardingView:
        return MaterialPageRoute(
          builder: (_) => const OnBoardingView()
        );
      case Routes.loginView:
        return MaterialPageRoute(
          builder: (_) => const LoginView()
        );
      default:
        return null;
    }
  }
}