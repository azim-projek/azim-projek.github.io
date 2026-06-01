import 'package:flutter/material.dart';
import 'home_page.dart';

void main() {
  runApp(const FourazApp());
}

class FourazApp extends StatelessWidget {
  const FourazApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Four’Az BARBER',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}