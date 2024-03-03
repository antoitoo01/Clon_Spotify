import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../Componentes/carrusel_artistas_sugeridos.dart';
import '../Componentes/carrusel_recopilacion_semanal.dart';
import '../Componentes/carrusel_tu_musica.dart';
import '../Componentes/custom_title.dart';
import '../Componentes/titulo_semanal.dart';
import '../Componentes/top_titulo.dart';
import '../utiles/DatosSpotify/datos_home.dart';
import '../utiles/SpotifyColors.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 24), // Margen
            const TopTitulo(title: "¡Buenos días!"),
            const SizedBox(height: 32), // Margen
            const TituloSemanal(),
            const SizedBox(height: 24), // Margen
            const RecopilacionSemanal(),
            const SizedBox(height: 16), // Margen
            const CustomTitle(title: "Tu top musical"),
            const YourTopMusic(),
            const SizedBox(height: 12,), // Margen
            const CustomTitle(title: "Artistas recomendados"),
            const ArtistasSugeridos()


          ]
      ),
    );
  }


}


