import 'package:flutter/material.dart';

import 'dart:async';
import 'package:app_project/auth/login_page.dart';

class FlashScreen extends StatefulWidget {
  const FlashScreen({super.key});

  @override
  State<FlashScreen> createState() => _FlashScreenState();
}

class _FlashScreenState extends State<FlashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) {
            return LoginPage();
          },
        ),
      );
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFF6366F1),
              Color.fromARGB(255, 141, 140, 168),
              Color.fromARGB(53, 68, 56, 202),
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Icon(Icons.check),
            ),
            SizedBox(height: 16),

            Text(
              "Task Flow",
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 20),

            Text(
              "Organize your tasks\nefficietly and effectively",
              style: TextStyle(color: Colors.white),
            ),

            SizedBox(height: 60),
            CircularProgressIndicator(strokeWidth: 2, color: Colors.white),
          ],
        ),
      ),
    );
  }
}
