import 'package:flutter/material.dart';

class ConnectionLine extends StatelessWidget {
  final double lineLength;
  final double lineThickness;
  final Color lineColor;
  final bool isHorizontal;
  const ConnectionLine(
      {super.key,
      required this.isHorizontal,
      required this.lineLength,
      required this.lineThickness,
      required this.lineColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: isHorizontal ? lineLength : lineThickness,
      height: isHorizontal ? lineThickness : lineLength,
      color: lineColor,
    );
  }
}
