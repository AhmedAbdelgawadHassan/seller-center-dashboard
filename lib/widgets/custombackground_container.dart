import 'package:flutter/material.dart';

class CustombackgroundContainer extends StatelessWidget {
  const CustombackgroundContainer({super.key, required this.child, required this.padding});
  final Widget child;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    return Container(
    padding: padding,
    alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        ),
      child: child,
    );
  }
}