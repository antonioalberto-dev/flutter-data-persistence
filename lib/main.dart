import 'package:flutter/material.dart';

import 'screens/dashboard.dart';

void main() {
  runApp(const ByteBankApp());
}

class ByteBankApp extends StatelessWidget {
  const ByteBankApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(color: Colors.green[800]),
        primarySwatch: Colors.green,
        primaryColor: Colors.green[700],
      ),
      debugShowCheckedModeBanner: false,
      home: Dashboard(),
    );
  }
}