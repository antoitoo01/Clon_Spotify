import 'package:flutter/material.dart';

import '../utiles/SpotifyColors.dart';

class Buscador extends StatelessWidget {
  const Buscador({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(
          color: Colors.white,
          fontSize: 11
      ),
      decoration: InputDecoration(
          hintText: "Buscar",
          hintStyle: TextStyle(
            color: Colores.starterWhite,
            fontSize: 11,
          ),
          filled: true,
          fillColor: Colores.cardBackGroundColor,
          prefixIcon: Icon(Icons.search_outlined,
              color: !FocusScope
                  .of(context)
                  .isFirstFocus
                  ? Colors.white
                  : Colores.primaryColor),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                  color: Colores.primaryColor
              )
          ),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10)
          )
      ),

    );
  }
}