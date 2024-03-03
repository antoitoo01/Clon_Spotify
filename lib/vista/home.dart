import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../Componentes/carrusel_artistas_sugeridos.dart';
import '../Componentes/carrusel_recopilacion_semanal.dart';
import '../Componentes/carrusel_tu_musica.dart';
import '../Componentes/custom_title.dart';
import '../Componentes/titulo_semanal.dart';
import '../Componentes/top_titulo.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      padding: EdgeInsets.all(16),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 24), // Margen
            TopTitulo(title: "¡Buenos días!"),
            SizedBox(height: 32), // Margen
            TituloSemanal(),
            SizedBox(height: 24), // Margen
            RecopilacionSemanal(),
            SizedBox(height: 16), // Margen
            CustomTitle(title: "Tu top musical"),
            YourTopMusic(),
            SizedBox(height: 12,), // Margen
            CustomTitle(title: "Artistas recomendados"),
            ArtistasSugeridos()
          ]
      ),
    );
  }


}


