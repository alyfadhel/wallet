import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  final double width;
  final double? height;
  final Decoration decoration;
  final Widget? widget;

  const MyContainer({
    super.key,
    this.width = double.infinity,
    this.height,
    required this.decoration,
    this.widget
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: decoration,
      child: widget,
    );
  }
}
