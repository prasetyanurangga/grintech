import 'package:grintech/screens/login_screen.dart';
import 'package:grintech/screens/main_screen.dart';
import 'package:grintech/screens/add_onboarding_screen.dart';
import 'package:flutter/material.dart';


class PageRoutes {
	static const linkLogin = "/login";
	static const linkMain = "/main";
	static const linkAddOnboarding = "/add_onboarding";

	static Route<dynamic> generateRoute(RouteSettings settings) {
	  final  arguments = settings.arguments;
	  switch (settings.name) {
	    case linkLogin:
	      return MaterialPageRoute(builder: (_) => LoginScreen());
	    case linkMain:
	      return MaterialPageRoute(builder: (_) => MainScreen());
	     case linkAddOnboarding:
	      return MaterialPageRoute(builder: (_) => AddOnBoardingScreen());
	  }
	  return MaterialPageRoute(builder: (_) => LoginScreen());
	}
}
