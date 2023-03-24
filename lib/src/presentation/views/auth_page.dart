import 'package:globus/src/presentation/widgets/auth_page/auth_page_widget.dart';
import 'package:flutter/material.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: AuthPageWidget(),
    );
  }
}
