import 'package:flutter/material.dart';

import '../utiles/DatosSpotify/datos_home.dart';
import '../utiles/SpotifyColors.dart';


class ArtistasSugeridos extends StatelessWidget {
  const ArtistasSugeridos({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 195,
      child: ListView.builder(
          itemCount: artists.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            final artist = artists[index];
            return Container(
              height: 155,
              padding: const EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 0),
              margin: const EdgeInsets.symmetric(horizontal: 4),
              decoration: BoxDecoration(
                  color: Colores.cardBackGroundColor,
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Column(
                children: [
                  SizedBox(
                      height: 125,
                      width: 125,
                      child: Image.asset(artist['image'])
                  ),
                  const SizedBox(height: 16,),
                  Text(artist['name'], style: TextStyle(
                      color: Colores.starterWhite,
                      fontSize: 16,
                      fontWeight: FontWeight.w600
                  ))
                ],
              ),
            );
          }
      ),
    );
  }
}