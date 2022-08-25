import 'package:dashboard/responsive_ui/desktop_scaffold.dart';
import 'package:dashboard/responsive_ui/mobile_Scaffold.dart';
import 'package:dashboard/responsive_ui/responsive_layout.dart';
import 'package:dashboard/responsive_ui/tablet_Scaffold.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: ResponsiveLayout(
          mobileScaffold: MobileScaffold(),
          tabletScaffold: TabletScaffold(),
          desktopScaffold: DesktopScaffold(),
        ));
  }
}
