import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_may/about.dart';
import 'package:flutter_may/chats.dart';

import 'package:flutter_may/listcust.dart';

import 'login.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: tabbar(),
  ));
}

class tabbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Text("WhatsApp"),
          actions: [
            Icon(Icons.camera_alt_outlined),
            SizedBox(
              width: 20,
            ),
            Icon(Icons.search),
            PopupMenuButton(itemBuilder: (context) {
              return [
                PopupMenuItem(child: Text("New group")),
                PopupMenuItem(child: Text("New broadcast")),
                PopupMenuItem(child: Text("payment")),
                PopupMenuItem(child: Text("settings")),
              ];
            })
          ],
          bottom: TabBar(
            unselectedLabelColor: Colors.white60,
            tabs: [
              Tab(
                  icon: Icon(
                Icons.groups_3_rounded,
              )),
              Tab(text: "Chats"),
              Tab(text: "Status"),
              Tab(text: "Calls"),
            ],
          ),
        ),
        body: TabBarView(
          children: [about(), chats(), login(), list_cust()],
        ),
      ),
    );
  }
}
