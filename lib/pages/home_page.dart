// ignore_for_file: unused_import, avoid_unnecessary_containers, prefer_const_constructors, avoid_print, unused_field, prefer_const_declarations, unused_local_variable

import 'dart:math';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_app/models/catalog.dart';
import 'package:my_app/widgets/drawer.dart';
import 'package:my_app/widgets/item_widget.dart';

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
        child: (CatalogModel.items != null && CatalogModel.items.isNotEmpty)
            ? GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 16,
                ),
                itemBuilder: (context, index) {
                  final item = CatalogModel.items[index];
                  return Card(
                    clipBehavior: Clip.antiAlias,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: GridTile(
                      header: Container(
                        padding: const EdgeInsets.all(12),
                        decoration:
                            BoxDecoration(color: Colors.blueAccent.shade400),
                        child: Text(item.name,
                            style: TextStyle(color: Colors.white)),
                      ),
                      footer: Container(
                        padding: const EdgeInsets.all(12),
                        decoration:
                            BoxDecoration(color: Colors.black),
                        child: Text("\$ ${item.price}",
                            style: TextStyle(color: Colors.white)),
                      ),
                      child: Image.network(item.imageUrl),
                    ),
                  );
                },
                itemCount: CatalogModel.items.length,
              )
            : Center(
                child: CircularProgressIndicator(),
              ),
      ),
      drawer: MyDrawer(),
      bottomNavigationBar: BottomAppBar(),
    );
  }
}
