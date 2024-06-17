import 'package:flutter/material.dart';

class Cotegary extends StatelessWidget {
  Cotegary({
    super.key,
    required this.text,
    required this.color,
    required this.onTap,
  });

  final String text;
  final Color color;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(15),
        alignment: Alignment.centerLeft,
        height: 60,
        width: double.infinity,
        color: color,
        child: Text(text,
            style: const TextStyle(color: Colors.white, fontSize: 20)),
      ),
    );
  }
}
