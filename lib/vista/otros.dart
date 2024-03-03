import 'package:flutter/material.dart';
import 'package:flutter_app/Componentes/custom_title.dart';

import '../Componentes/actividad_card.dart';
import '../Componentes/playlist_card.dart';
import '../Componentes/top_more_titulo.dart';

class Mas extends StatelessWidget {
  const Mas({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 24),
            //Margen
            const TopMoreTitle(title: "Tu biblioteca"),
            const PlayListCard(),
            Align(
                alignment: Alignment.center,
                child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Ver todo",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ))),
            const SizedBox(height: 8),
            //Margen
            const CustomTitle(title: "Tu actividad"),
            const SizedBox(height: 16),
            //Margen
            //Qué es un InkWell: https://api.flutter.dev/flutter/material/InkWell-class.html
            const ActividadCard(
                title: "Canciones que te gustan", icon: Icons.favorite),
            Divider(color: Colors.grey.shade800),
            const ActividadCard(
                title: "Artistas seguidos",
                icon: Icons.people),
            Divider(color: Colors.grey.shade800),
            const ActividadCard(
                title: "Podcasts seguidos",
                icon: Icons.mic),
          ],
        ),
      ),
    );
  }
}
