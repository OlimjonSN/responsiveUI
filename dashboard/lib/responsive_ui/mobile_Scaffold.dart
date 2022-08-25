import 'package:dashboard/constants.dart';
import 'package:flutter/material.dart';

class MobileScaffold extends StatefulWidget {
  const MobileScaffold({Key? key}) : super(key: key);

  @override
  State<MobileScaffold> createState() => _MobileScaffoldState();
}

class _MobileScaffoldState extends State<MobileScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(mobileSeconColor),
      backgroundColor: mobilePrimaryColor,
      drawer: myDrawer(mobileSeconColor),
      body: Column(children: [
        myGrid(cc: 2, ic: 4, color: mobileSeconColor),
        Expanded(
            child: ListView.builder(
                itemCount: 4,
                itemBuilder: (context, index) {
                  return MyTile();
                }))
      ]),
    );
  }
}
