import 'package:flutter/material.dart';
import 'package:flutter_app/Componentes/custom_title.dart';
import 'package:flutter_app/Componentes/top_titulo.dart';
import 'package:flutter_app/utiles/DatosSpotify/datos_home.dart';

import '../Componentes/buscador.dart';
import '../Componentes/carrusel_podcasts.dart';
import '../Componentes/lista_browse_card.dart';
import '../utiles/SpotifyColors.dart';

class Buscar extends StatelessWidget {
  const Buscar({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 24), //Margen
                    const TopTitulo(title: "Buscar"),
                    const SizedBox(height: 32), //Margen
                    const Buscador(),
                    const SizedBox(height: 13), //Margen
                    Wrap(
                        spacing: 8,
                        runSpacing: 8,
                        children: searchList
                            .map((search) => Container(
                                padding: const EdgeInsets.all(16),
                                decoration: BoxDecoration(
                                    color: Colores.cardBackGroundColor,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Text(search,
                                    style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 11,
                                        fontWeight: FontWeight.w400))))
                            .toList()
                    ),
                    const SizedBox(height: 24), //Margen
                    const CustomTitle(title: "Podcasts"),
                    const SizedBox(height: 13),
                    const ListaPodcasts(),
                    const SizedBox(height: 12), //Margen
                    const CustomTitle(title: "Explorar"),
                    const SizedBox(height: 13), //Margen
                    const ListaExplorar()
                  ],
                ),
            ),
        ),
    );
  }
}




