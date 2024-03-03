import 'package:flutter/material.dart';

import 'browse_card.dart';

class ListaExplorar extends StatelessWidget {
  const ListaExplorar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Wrap(
      spacing: 8,
      runSpacing: 8,
      children: [
        BrowseCard(
            title: "Para ti",
            color1: '#E02FCF',
            color2: '#00C188'
        ),
        BrowseCard(
            title: "Listas",
            color1: '#0A3CEC',
            color2: '#4dd4ac'
        ),
        BrowseCard(
            title: "Descubrir",
            color1: '#0A3CEC',
            color2: '#D9DD01'
        ),
        BrowseCard(
            title: "Nuevos Lanzamientos",
            color1: '#0E31AE',
            color2: '#DD1010'
        )
      ],
    );
  }
}