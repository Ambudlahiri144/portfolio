import 'package:flutter/material.dart';
import 'main.dart';
import 'package:flutterflow_ui/flutterflow_ui.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Portfolio',
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: const HomePageWidget(),
    );
  }
}
