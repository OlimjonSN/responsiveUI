import 'package:flutter/material.dart';

const int mobileSize = 500;
const int tabletSize = 1100;
const Color mobilePrimaryColor = Color(0xFFd9e9e6);
const Color mobileSeconColor = Color(0xFFa7ecdf);
const Color tabletPrimaryColor = Color(0xFFfae3da);
const Color tabletSecondColor = Color(0xFFefb59e);
const Color desktopPrimaryColor = Color(0xFF66afcd);
const Color desktopSecondColor = Color(0xFF419abf);

AppBar myAppBar(Color color) {
  return AppBar(
    elevation: 5,
    backgroundColor: color,
  );
}

Drawer myDrawer(Color color) {
  return Drawer(
    backgroundColor: color,
    child: Column(children: const [
      DrawerHeader(child: Icon(Icons.favorite)),
      ListTile(
        leading: Icon(Icons.home),
        title: Text("D A S H B O A R D"),
      ),
      ListTile(
        leading: Icon(Icons.chat),
        title: Text("M E S S A G E"),
      ),
      ListTile(
        leading: Icon(Icons.settings),
        title: Text("S E T T I N G S"),
      ),
      ListTile(
        leading: Icon(Icons.logout),
        title: Text("L O G O U T"),
      ),
    ]),
  );
}

myGrid({double as = 1, int ic = 4, int cc = 2, Color color = Colors.red}) {
  return AspectRatio(
    aspectRatio: as,
    child: SizedBox(
      width: double.infinity,
      child: GridView.builder(
          itemCount: ic,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: cc),
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(color: Colors.blue),
            );
          }),
    ),
  );
}

MyTile() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      color: Colors.red,
    ),
  );
}
