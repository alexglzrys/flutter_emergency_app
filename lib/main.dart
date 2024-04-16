import 'package:emergency_flutter_app/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(const EmergencyApp());

class EmergencyApp extends StatelessWidget {
  const EmergencyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Emergency App',
      home: HomeScreen(),
    );
  }
}
