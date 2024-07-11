import 'package:flutter/material.dart';

class MYEditIcon extends StatelessWidget {
  const MYEditIcon(
      {super.key,
      required this.color,
      required this.width,
      required this.height,
      this.iconEdit,
      this.image});

  final Color color;
  final double width;
  final double height;
  final IconData? iconEdit;
  final String? image;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(image ?? ''),
        ),
        borderRadius: BorderRadius.circular(100),
        color: color.withOpacity(0.1),
      ),
      child: Icon(iconEdit, color: color),
    );
  }
}
