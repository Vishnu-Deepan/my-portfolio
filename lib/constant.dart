import 'package:flutter/material.dart';

var myBackgroundColor = Colors.grey.shade300;

var myAppBar = AppBar(
  backgroundColor: Colors.white,
);

var myDrawer = Drawer(
  backgroundColor: Colors.grey.shade200,
  child: Column(
    children: [
      DrawerHeader(
        child: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.face),
        ),
      ),
      ListTile(
          leading: Icon(Icons.home), title: Text("D A S H B O A R D")),
      ListTile(
          leading: Icon(Icons.work_outline),
          title: Text("E X P E R I E N C E")),
      ListTile(
          leading: Icon(Icons.school), title: Text("E D U C A T I O N ")),
      ListTile(
          leading: Icon(Icons.layers), title: Text("P R O J E C T S")),
      ListTile(
          leading: Icon(Icons.contact_mail_outlined),
          title: Text("C O N T A C T")),
    ],
  ),
);