// ignore_for_file: unused_import, avoid_unnecessary_containers, prefer_const_constructors, avoid_print, unused_field, prefer_const_declarations, unused_local_variable

import 'dart:math';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_app/models/catalog.dart';
import 'package:my_app/models/products.dart';
import 'package:my_app/widgets/drawer.dart';
import 'package:my_app/widgets/item_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Products> productList = [
    Products(
        id: 1,
        name: "iPhone 12 Pro",
        desc: "Apple iPhone 12th generation",
        price: 999,
        color: "#33505a",
        // imageUrl:
        //     "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRISJ6msIu4AU9_M9ZnJVQVFmfuhfyJjEtbUm3ZK11_8IV9TV25-1uM5wHjiFNwKy99w0mR5Hk&usqp=CAc"
        ),
  ];
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    var catalogJson = await rootBundle.loadString("assests/files/catalog.json");
    print(catalogJson);
    // var decodedData = jsonDecode(catalogJson);

    // var productsData = decodedData["products"];
    // print(productsData);
    setState(() {
      // ProductsModel.items =
      // List.from(productsData).map<Products>((e) => Products.fromMap(e)).toList();
      // List.from(productsData)
      //     .map<Products>((e) => Products.fromJson(e))
      //     .toList();
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
        child: (productList.isNotEmpty)
            ? ListView.builder(
                itemCount: productList.length,
                itemBuilder: (context, index) {
                  return ItemWidget(
                    item: productList[index],
                  );
                },
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
