// ignore_for_file: unused_import, avoid_unnecessary_containers, prefer_const_constructors, avoid_print, unused_field, prefer_const_declarations, unused_local_variable
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final String imageUrl = "https://www.derasachasauda.org/assets/images/dss/Saint_Dr_MSG_Insan_Ji/dr_msg_1.jpg";
    final String imageUrl =
        "https://yt3.ggpht.com/ytc/AMLnZu-15724oKvw3d6sEhdXi56P4qj_k-cIB9ZCjuRGxg=s900-c-k-c0x00ffffff-no-rj";
    return Drawer(
      child: Container(
        color: Colors.blueAccent.shade400,
        child: ListView(
          padding: EdgeInsets.zero,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            DrawerHeader(
                // margin: EdgeInsets.zero,
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  // margin: EdgeInsets.zero,
                  // decoration: BoxDecoration(color: Colors.cyan.shade100),
                  accountName: Text("amanat_2003"),
                  accountEmail: Text("amanatsinghnain@gmail.com"),
                  currentAccountPicture:
                      CircleAvatar(backgroundImage: NetworkImage(imageUrl)),
                )),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              // iconColor: Colors.deepOrange,
              title: Text(
                "Home",
                style: TextStyle(
                  color: Colors.white,
                ),
                textScaleFactor: 1.2,
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
              // iconColor: Colors.deepOrange,
              title: Text(
                "Profile",
                style: TextStyle(
                  color: Colors.white,
                ),
                textScaleFactor: 1.2,
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.white,
              ),
              // iconColor: Colors.deepOrange,
              title: Text(
                "Email me",
                style: TextStyle(
                  color: Colors.white,
                ),
                textScaleFactor: 1.2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
