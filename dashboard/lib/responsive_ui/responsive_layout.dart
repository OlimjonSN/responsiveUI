import 'package:dashboard/constants.dart';
import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileScaffold;
  final Widget tabletScaffold;
  final Widget desktopScaffold;

  const ResponsiveLayout(
      {required this.mobileScaffold,
      required this.tabletScaffold,
      required this.desktopScaffold});
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: ((context, constraints) {
      if (constraints.maxWidth < mobileSize) {
        return mobileScaffold;
      } else if (constraints.maxWidth < tabletSize) {
        return tabletScaffold;
      } else {
        return desktopScaffold;
      }
    }));
  }
}
