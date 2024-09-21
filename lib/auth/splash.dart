import 'package:ecommerce_fontend/auth/onboarding.dart';
import 'package:ecommerce_fontend/pages/bottom_navigation.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _checkUser();
  }

  void _checkUser() async {
    // Check the current user from FirebaseAuth
    User? user = FirebaseAuth.instance.currentUser;

    // Simulate a delay for the splash screen (e.g., 3 seconds)
    await Future.delayed(const Duration(seconds: 3));

    if (user == null) {
      // If no user is logged in, navigate to the login screen
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => OnboadingPage()));
    } else {
      // If the user is logged in, navigate to the home screen
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => BottomNavigation()));
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Image.asset("assets/images/splash.png",fit:BoxFit.cover ,),
      ),
    );
  }
}