import 'package:flutter/material.dart';
import 'screens/login_screen.dart';

void main() => runApp(const BusUnabApp());

class BusUnabApp extends StatelessWidget {
  const BusUnabApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bus UNAB',
      theme: ThemeData(colorSchemeSeed: Colors.indigo, useMaterial3: true),
      home: const LoginScreen(),
    );
  }
}
