import 'package:flutter/material.dart';

import '../utiles/SpotifyColors.dart';

class TituloSemanal extends StatelessWidget {
  const TituloSemanal({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.electric_bolt_outlined, color: Colores.primaryColor),
        //RichText nos permite mostrar varios estilos en un mismo widget (cursiva, negrita, etc)
        RichText(text: TextSpan(
            text: "Recopilación ",
            style: TextStyle(
                color: Colores.primaryColor,
                fontSize: 18,
                fontWeight: FontWeight.w600
            ),
            children: [
              TextSpan(
                  text: "semanal",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w600
                  )
              )
            ]
        ))
      ],
    );
  }
}