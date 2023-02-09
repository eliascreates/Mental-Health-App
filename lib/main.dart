import 'package:flutter/material.dart';

import './pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mental Health App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        iconTheme: const IconThemeData(color: Colors.white),
        textTheme: Theme.of(context).textTheme.apply(bodyColor: Colors.white),
      ),
      home: const HomePage(),
    );
  }
}
