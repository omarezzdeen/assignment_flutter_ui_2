import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget portrait;
  final Widget landscape;

  Responsive({
    required this.portrait,
    required this.landscape,
  });

  static bool isPortrait(BuildContext context) =>
      MediaQuery.of(context).size.width < 400;

  static bool isLandscape(BuildContext context) =>
      MediaQuery.of(context).size.width >= 600;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context, constraints) {
      if (constraints.maxWidth >= 600) {
        return landscape;
      } else {
        return portrait ;
      }
    });
  }
}