import 'package:flutter/material.dart';
import 'package:shopui/constants.dart';

class ColorDot extends StatelessWidget {
  const ColorDot({
    Key? key,
    required this.press,
    required this.color,
    required this.isActive,
  }) : super(key: key);
  final VoidCallback press;
  final Color color;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        padding: const EdgeInsets.all(defaultPadding / 4),
        decoration: BoxDecoration(
          border:
              Border.all(color: isActive ? primaryColor : Colors.transparent),
          shape: BoxShape.circle,
        ),
        child: CircleAvatar(
          radius: 10,
          backgroundColor: color,
        ),
      ),
    );
  }
}
