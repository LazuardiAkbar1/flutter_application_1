import 'package:flutter/material.dart';
import 'package:flutter_application_1/Onboarding/onboarding_screen.dart';
import 'package:flutter_application_1/Login/Login.dart';
import 'package:flutter_application_1/Dashboard/Dashboard.dart';
import 'package:flutter_application_1/Login/ForgetPassword.dart';
import 'package:flutter_application_1/Login/ForgetPassword1.dart';
import 'package:flutter_application_1/Register/register.dart';
import 'package:flutter_application_1/Register/OTPVerification.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Komplekita',
      home: SplashScreen(),
      routes: {
        '/Login/Login': (context) => LoginScreen(),
        '/Login/ForgetPassword': (context) => ForgetPasswordScreen(),
        '/Login/ForgetPassword1': (context) => ForgetPassword1(),
        '/Register/register': (context) => RegisterScreen(),
        '/Register/OTPVerification': (context) => OTPVerificationScreen(),
      },
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => OnboardingScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/images/komplekita_logo.png'),
            const SizedBox(height: 20),
            const Text(
              'Welcome to Komplekita',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 100),
            const SizedBox(height: 20),
            const Text(
              'Your app description here',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Version 0.1.23 build 2034.43.3301',
              style: TextStyle(
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}