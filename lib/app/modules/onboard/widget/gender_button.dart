import 'package:flutter/material.dart';

class GenderButton extends StatelessWidget {
  final VoidCallback onTap;
  final Decoration decoration;
  final Color color;
  final String text;
  final TextStyle textStyle;

  const GenderButton(
      {super.key,
      required this.onTap,
      required this.color,
      required this.decoration,
      required this.text,
      required this.textStyle});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: AnimatedContainer(
        width: 230,
        height: 60,
        duration: Duration(
          milliseconds: 500,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: color,
        ),
        child: Center(
          child: Text(
            text,
            style: textStyle,
          ),
        ),
      ),
    );
  }
}
