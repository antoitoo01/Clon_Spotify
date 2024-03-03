import 'package:flutter/material.dart';
import 'package:flutter_app/utiles/SpotifyColors.dart';

import '../utiles/DatosSpotify/datos_home.dart';

class PlayListCard extends StatelessWidget {
  const PlayListCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: playList.length,
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2),
      itemBuilder: ((context, index) {
        final playlist = playList[index];
        return Container(
          decoration: BoxDecoration(
              color: Colores.cardBackGroundColor,
              borderRadius: BorderRadius.circular(10)
          ),
          padding: const EdgeInsets.only(top: 10),
          margin: const EdgeInsets.all(4),
          child: Column(
            children: [
              Wrap(
                children: [
                  PlayListImage(image: playlist['image_1']),
                  PlayListImage(image: playlist['image_2']),
                  PlayListImage(image: playlist['image_3']),
                  PlayListImage(image: playlist['image_4'])
                ],
              ),
              const SizedBox(height: 10,),
              Text(playlist['title'],style: TextStyle(
                  color: Colores.starterWhite,
                  fontSize: 14,
                  fontWeight: FontWeight.w600
              ))
            ],
          ),
        );
      }),
    );
  }
}

class PlayListImage extends StatelessWidget {
  const PlayListImage({
    super.key, required this.image,
  });

  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 66,
      width: 75,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover)
      ),
    );
  }
}