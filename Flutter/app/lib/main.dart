import 'package:app/pages/fistPage.dart';
import 'package:app/pages/secondPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  void userTapped() {
    print("User tapped!");
  }

  void logOut() {
    print("You logouted.");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: firstPage(),
      routes: {"/secondPage": (context) => secondPage()},
    );
  }
}
