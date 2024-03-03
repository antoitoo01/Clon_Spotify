//Boton recordarme:
import 'package:flutter/material.dart';

import '../utiles/SpotifyColors.dart';

class BotonRecordarme extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _BotonRecordarme();
  }
}

//Tenemos que crearle el estado
class _BotonRecordarme extends State<BotonRecordarme> {
  bool isSelected = false;

  void toggleSelection(bool newValue) {
    setState(() {
      isSelected = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SwitchListTile.adaptive(
      value: isSelected,
      inactiveTrackColor: Colors.white,
      activeTrackColor: Colores.primaryColor,
      // Usando un color de ejemplo
      onChanged: toggleSelection,
      contentPadding: EdgeInsets.zero,
      title: Text(
        "Recordarme",
        style: TextStyle(
          color: Colores.starterWhite, // Usando un color de ejemplo
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}