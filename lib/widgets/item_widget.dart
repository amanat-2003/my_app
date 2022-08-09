// ignore_for_file: unused_import, avoid_unnecessary_containers, prefer_const_constructors, avoid_print, unused_field, prefer_const_declarations, unused_local_variable
import 'package:flutter/material.dart';
import 'package:my_app/models/catalog.dart';

class ItemWidget extends StatelessWidget {
  final Item item;
  const ItemWidget({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
      elevation: 2,
      child: ListTile(
        onTap: () {
          print("${item.name} is pressed");
        },
        title: Text(item.name),
        subtitle: Text(item.desc),
        // visualDensity: VisualDensity(horizontal: 1),
        trailing: Text(
          "\$${item.price}",
          textScaleFactor: 1.2,
          style: TextStyle(
              color: Colors.blueAccent.shade400, fontWeight: FontWeight.bold),
        ),

        // isThreeLine: true,
      ),
    );
  }
}
