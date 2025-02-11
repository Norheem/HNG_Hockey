import 'package:flutter/material.dart';
import 'package:hockey/palette.dart';

class Pucker extends StatelessWidget {
  const Pucker({
    super.key,
    required this.size,
    required this.x,
    required this.y,
    this.color,
  });
  final double size;
  final double x;
  final double y;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      transform: Matrix4.translationValues(x, y, 0),
      decoration: BoxDecoration(
        color: color ?? Palette.player,
        borderRadius: BorderRadius.circular(size),
      ),
    );
  }
}

class PuckerBoundaries {
  final double left;
  final double right;
  final double top;
  final double bottom;

  PuckerBoundaries(
      {required this.left,
      required this.right,
      required this.top,
      required this.bottom});
}
