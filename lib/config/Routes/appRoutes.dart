import 'package:flutter/material.dart';
import 'package:trainnnig/core/utils/appStrings.dart';
import 'package:trainnnig/features/random_quote/prsentation/Screen/quoteScreen.dart';
import 'package:trainnnig/features/routingTest/presentation/Screens/routingTestScreen.dart';

class Routes{
  static const String homaRoute = "/";
  static const String routingTestingScreenRoute = "/routingTesingScreen";
}


class appRoutes{
  static Route generatedRoutes(RouteSettings routeSettings){
    switch(routeSettings.name){
      case Routes.homaRoute:
        return MaterialPageRoute(builder: (context) => const quoteScreen());
      case Routes.routingTestingScreenRoute:
        return MaterialPageRoute(builder: (context) => const routingTestScreen());
      default:
      return undefinedRoute();
    }
  }

  static Route undefinedRoute(){
    return MaterialPageRoute(builder: (context) => Container(
      child: const Center(
        child: Text(
            appStrings.undifinedPage,
          style: TextStyle(
            fontSize: 25
          ),
        ),
      ),
    ));
  }
}
