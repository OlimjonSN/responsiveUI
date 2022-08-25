import 'package:dashboard/constants.dart';
import 'package:flutter/material.dart';

class DesktopScaffold extends StatefulWidget {
  const DesktopScaffold({Key? key}) : super(key: key);

  @override
  State<DesktopScaffold> createState() => _DesktopScaffoldState();
}

class _DesktopScaffoldState extends State<DesktopScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: desktopPrimaryColor,
        appBar: myAppBar(desktopSecondColor),
        drawer: myDrawer(desktopSecondColor),
        body: Column(children: [
          myGrid(as: 1.8, ic: 4, cc: 4, color: desktopSecondColor),
          Expanded(
              child: ListView.builder(
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        color: Colors.red,
                      ),
                    );
                  }))
        ]));
  }
}
