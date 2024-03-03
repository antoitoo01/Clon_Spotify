import 'package:flutter/material.dart';

import '../utiles/DatosSpotify/datos_home.dart';
import '../utiles/SpotifyColors.dart';
class RecopilacionSemanal extends StatelessWidget {
  const RecopilacionSemanal({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: 160,
        // ListView nos va a crear la lista de elementos que vamos a mostrar
        // Como un RecyclerView más o menos.
        child: ListView.builder(
            itemCount: slider.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: ((context, index) {
              final slide = slider[index];

              return Column(
                children: [
                  //Contenedor de la canción
                  Container(
                    height: 125,
                    width: 240,
                    margin: const EdgeInsets.symmetric(horizontal: 8),
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(15),
                        //Obtenemos y mostramos cada imagen del slider
                        image: DecorationImage(
                            image: AssetImage(slide['image']),
                            fit: BoxFit.cover
                        )
                    ),
                  ),
                  const SizedBox(height:8),
                  Text(slide['title'], style: TextStyle(
                      color: Colores.starterWhite,
                      fontSize: 11,
                      fontWeight: FontWeight.w400
                  ))
                ],
              );
            })
        )
    );
  }
}