import 'package:flutter/material.dart';
import 'package:karima_sms/custom/custom_search_bar.dart';
import 'package:karima_sms/services/persmission_handler.dart';
import 'package:karima_sms/views/home_view.dart';
import 'package:permission_handler/permission_handler.dart';

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
        body: Center(child: PermissionWidget(Permission.sms)),
      ),
    );
  }
}


