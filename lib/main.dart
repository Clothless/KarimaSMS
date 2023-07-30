import 'package:flutter/material.dart';
import 'package:karima_sms/custom/custom_search_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(child: CustomSearchBar()),
      ),
    );
  }
}


