import 'package:app/pages/secondPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class firstPage extends StatelessWidget {
  const firstPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text("1st Page"),
        centerTitle: true,
      ),
      drawer: Drawer(backgroundColor: Colors.lightBlue),
    );
  }
}
