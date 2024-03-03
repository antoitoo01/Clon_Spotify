import 'package:flutter/material.dart';
import 'package:flutter_app/utiles/SpotifyColors.dart';

import '../utiles/DatosSpotify/datos_home.dart';

class YourTopMusic extends StatelessWidget {
  const YourTopMusic({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 220,
        child: ListView.builder(
            itemCount: topMixes.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              final topMix = topMixes[index];
              return Container(
                decoration: BoxDecoration(
                    color: Colores.cardBackGroundColor,
                    borderRadius: BorderRadius.circular(10)
                ),
                padding: const EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 0),
                margin: const EdgeInsets.all(4),
                height: 155,
                width: 195,
                child: Column(
                  children: [
                    Container(
                      height: 113,
                      width: 125,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(topMix['image']),
                              fit: BoxFit.cover
                          )
                      ),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 7,
                              height: 24,
                              decoration: BoxDecoration(
                                  color: hexToColor(topMix['color'])
                              ),
                            ),
                            const SizedBox(height: 12,), //Margen
                            Container(
                              height: 8,
                              decoration: BoxDecoration(
                                  color: hexToColor(topMix['color']),
                                  borderRadius: const BorderRadius.only(
                                      bottomLeft: Radius.circular(15),
                                      bottomRight: Radius.circular(15)
                                  )
                              ),
                            ),
                          ]
                      ),
                    ),
                    const SizedBox(height: 8,), //Margen
                    Text(topMix['title'], style: TextStyle(
                        color: Colores.starterWhite,
                        fontSize: 14,
                        fontWeight: FontWeight.w600
                    )),
                    const SizedBox(height: 8,), //Margen
                    Text(topMix['description'], style: TextStyle(
                        color: Colores.starterWhite,
                        fontSize: 11,
                        fontWeight: FontWeight.w400
                    ))
                  ],
                ),
              );
            }
        )
    );
  }
}