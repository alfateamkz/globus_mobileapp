import 'package:alfateam/src/presentation/views/auth_page.dart';
import 'package:alfateam/src/presentation/views/navigation_page.dart';
import 'package:alfateam/src/presentation/widgets/auth_page/register_page.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static Route onGenerateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return _materialRoute(const NavigationPage());
      case '/auth':
        return _materialRoute(const AuthPage());
      case '/register':
        return _materialRoute(const RegisterPage());
      default:
        return _materialRoute(const NavigationPage());
    }
  }

  static Route<dynamic> _materialRoute(Widget view) {
    return MaterialPageRoute(builder: (_) => view);
  }

  static Route onUnkownRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (_) => const NavigationPage());
  }
}
