
import 'package:flutter/material.dart';
import 'screens/login_screen.dart';

void main() {
  runApp(const Week1App());
}

class Week1App extends StatelessWidget {
  const Week1App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Week 1 Training',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.teal,
        ),
        useMaterial3: true,
      ),
      home: const LoginScreen(),
    );
  }
}

