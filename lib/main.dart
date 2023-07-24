import 'package:flutter/material.dart';
import 'package:flutter_challenge_pedidosya/pages/views.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ViewsApp(),
    );
  }
}