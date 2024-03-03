import 'package:flutter/material.dart';

// https://usbrandcolors.com/spotify-colors/
class Colores {
  static Color starterWhite = const Color(0xFFDADADA);
  static Color primaryColor = const Color(0xFF1ED760);
  static Color cardBackGroundColor = const Color(0xFF0E0E0F);
  static Color inputHintColor = const Color(0xFFFFFFFF);
}

//Función para convertir un color RGB a Hexadecimal
Color hexToColor(String hex) {
  assert(RegExp(r'^#([0-9a-fA-F]{6})|([0-9a-fA-F]{8})$').hasMatch(hex));

  return Color(int.parse(hex.substring(1), radix: 16) + (hex.length == 7 ? 0xFF000000 : 0x00000000));
}
