import 'package:flutter/material.dart';

class CustomTitle extends StatelessWidget {
  const CustomTitle( {
    super.key, required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(title, style: const TextStyle(
        color: Colors.white,
        fontSize: 18,
        fontWeight: FontWeight.w600
    )
    );
  }
}