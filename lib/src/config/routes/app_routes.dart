import 'package:globus/src/presentation/views/auth_page.dart';
import 'package:globus/src/presentation/views/chat_page.dart';
import 'package:globus/src/presentation/views/discussion_page.dart';
import 'package:globus/src/presentation/views/login_page.dart';
import 'package:globus/src/presentation/views/navigation_page.dart';
import 'package:globus/src/presentation/views/new_idea_page.dart';
import 'package:globus/src/presentation/views/profile_page.dart';
import 'package:globus/src/presentation/views/quiz_page.dart';
import 'package:globus/src/presentation/views/voting_page.dart';
import 'package:globus/src/presentation/widgets/auth_page/register_page.dart';
import 'package:globus/src/presentation/widgets/chat_page/room_page.dart';
import 'package:globus/src/presentation/widgets/profile_page/personal_info_page.dart';
import 'package:globus/src/presentation/widgets/profile_page/profile_point_info_page.dart';
import 'package:globus/src/presentation/widgets/profile_page/profile_point_progress_page.dart';
import 'package:globus/src/presentation/widgets/profile_page/profile_privacy_page.dart';
import 'package:globus/src/presentation/widgets/profile_page/profile_reset_pass_page.dart';
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
      case '/login':
        return _materialRoute(const LoginPage());
      case '/discussion':
        return _materialRoute(const DiscussionPage());
      case '/chat':
        return _materialRoute(const ChatPage());
      case '/roomPage':
        return _materialRoute(const RoomPage());
      case '/profile':
        return _materialRoute(const ProfilePage());
      case '/personalInfo':
        return _materialRoute(const PersonalInfoPage());
      case '/pointInfo':
        return _materialRoute(const ProfilePointInfoPage());
      case '/pointProgress':
        return _materialRoute(const ProfilePointProgressPage());
      case '/resetPass':
        return _materialRoute(const ProfileResetPassPage());
      case '/privacy':
        return _materialRoute(const ProfilePrivacyPage());
      case '/quiz':
        return _materialRoute(const QuizPage());
      case '/voting':
        return _materialRoute(const VotingPage());
      case '/newIdea':
        return _materialRoute(const NewIdeaPage());
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
