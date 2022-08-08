// ignore_for_file: unused_import, avoid_unnecessary_containers,prefer_const_constructors
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:my_app/models/catalog.dart';
import 'package:my_app/widgets/drawer.dart';
import 'package:my_app/widgets/item_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(20, (index) => CatalogModel.items[0]);

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
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        child: ListView.builder(
          itemCount:dummyList.length,
          itemBuilder: (context, index) {
            return ItemWidget(
              item: dummyList[index],
            );
          },
        ),
      ),
      drawer: MyDrawer(),
      bottomNavigationBar: BottomAppBar(),
    );
  }
}
