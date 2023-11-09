import 'package:email_authentication/screens/login_screen.dart';
import 'package:email_authentication/screens/register_screen.dart';
import 'package:flutter/material.dart';

class LoginAndRegisterScreen extends StatefulWidget {
  const LoginAndRegisterScreen({super.key});

  @override
  State<LoginAndRegisterScreen> createState() => _LoginAndRegisterScreenState();
}

class _LoginAndRegisterScreenState extends State<LoginAndRegisterScreen> {
  bool showLoginScreen = true;

  void togglePages() {
    setState(() {
      showLoginScreen = !showLoginScreen;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginScreen == true) {
      return LoginScreen(onTap: togglePages);
    } else {
      return const RegisterScreen();
    }
  }
}
