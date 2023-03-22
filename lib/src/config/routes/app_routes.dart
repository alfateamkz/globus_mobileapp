import 'package:alfateam/src/presentation/views/auth_page.dart';
import 'package:alfateam/src/presentation/views/chat_page.dart';
import 'package:alfateam/src/presentation/views/discussion_page.dart';
import 'package:alfateam/src/presentation/views/navigation_page.dart';
import 'package:alfateam/src/presentation/widgets/auth_page/register_page.dart';
import 'package:alfateam/src/presentation/widgets/chat_page/room_page.dart';
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
      case '/discussion':
        return _materialRoute(const DiscussionPage());
      case '/chat':
        return _materialRoute(const ChatPage());
      case '/roomPage':
        return _materialRoute(const RoomPage());
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
