import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class secondPage extends StatelessWidget {
  const secondPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text("2nd page"),
        centerTitle: true,
      ),
    );
  }
}
