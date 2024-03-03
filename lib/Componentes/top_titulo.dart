import 'package:flutter/material.dart';

class TopTitulo extends StatelessWidget {
  const TopTitulo({
    super.key, required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: const TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.w700,
            fontStyle: FontStyle.normal
        )),
        IconButton(
            onPressed: (){ },
            icon: const Icon(Icons.more_vert, color: Colors.white))
      ],
    );
  }
}