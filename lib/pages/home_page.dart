// ignore_for_file: unused_import, avoid_unnecessary_containers, prefer_const_constructors, avoid_print, unused_field, prefer_const_declarations, unused_local_variable

import 'dart:math';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_app/models/catalog.dart';
import 'package:my_app/widgets/drawer.dart';
import 'package:my_app/widgets/item_widget.dart';
import 'package:velocity_x/velocity_x.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    var catalogJson = await rootBundle.loadString("assests/files/catalog.json");
    print(catalogJson);
    var decodedData = jsonDecode(catalogJson);
    print(decodedData);
    var productsData = decodedData["products"];
    print(productsData);
    setState(() {
      CatalogModel.items =
          List.from(productsData).map<Item>((e) => Item.fromMap(e)).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [],
      ),
    );
  }
}
