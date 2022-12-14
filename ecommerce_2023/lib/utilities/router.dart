import 'package:ecommerce_2023/utilities/routes.dart';
import 'package:ecommerce_2023/views/pages/auth_page.dart';
import 'package:ecommerce_2023/views/pages/landing_page.dart';
import 'package:flutter/cupertino.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings){
switch (settings.name) {
  case AppRoutes.authPageRoute:
      return CupertinoPageRoute(builder: (_) =>  AuthPage(), settings: settings);
      default:
      return CupertinoPageRoute(
        builder: (_) => const LandingPage(),
        settings: settings,
      );
}
} 