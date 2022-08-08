// ignore_for_file: unused_import, avoid_unnecessary_containers,prefer_const_constructors
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:my_app/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My App",
            textScaleFactor: 1.4,
            style: TextStyle(
              fontFamily: 'PressStart2P',
              // color: Colors.black87,
              fontStyle: FontStyle.normal,
            )),
      ),
      body: Center(
        child: Container(
          child: Text("How are you"),
        ),
      ),
      drawer: MyDrawer(),
      bottomNavigationBar: BottomAppBar(),
    );
  }
}
