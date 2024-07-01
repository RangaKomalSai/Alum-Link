import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:alumlink_app/Profile/profile_provider.dart';
import 'package:alumlink_app/Pages/home.dart';
import 'package:alumlink_app/Pages/login.dart';
void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ProfileProvider()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'MyFont3',
      ),
      home: LoginPage(),
    );
  }
}

