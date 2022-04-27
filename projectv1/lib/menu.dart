// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:projectv1/galeria.dart';
import 'package:projectv1/tabla.dart';

class menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideDrawer(),
      appBar: AppBar(
        title: Text('SideBar menu - FlutterCorner'),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Text('Side Menu Tutorial'),
      ),
    );
  }
}

class SideDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          DrawerHeader(
            child: Center(
              child: Text(
                'Side menu  FlutterCorner',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.black,
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () => {},
          ),
          ListTile(
            leading: Icon(Icons.shopping_cart),
            title: Text('tabla'),
            onTap: () => {Navigator.push(context, MaterialPageRoute(builder: (context)=> tabla()))},
          ),
          ListTile(
            leading: Icon(Icons.border_color),
            title: Text('galeria'),
            onTap: () => {Navigator.push(context, MaterialPageRoute(builder: (context)=> galeria()))},
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Logout'),
            onTap: () => {Navigator.of(context).pop()},
          ),
        ],
      ),
    );
  }
}