import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final double width;
  final double height;
  final Decoration decoration;
  final Widget widget;
  const MyButton({super.key,
    this.width = double.infinity,
    required this.height,
    required this.decoration,
    required this.widget,
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
