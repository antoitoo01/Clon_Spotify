//Campo de introducción de credenciales
import 'package:flutter/material.dart';

import '../utiles/SpotifyColors.dart';

class Input extends StatefulWidget {
  const Input({
    Key? key,
    required this.hint,
    this.isPassword = false,
    required this.controller,
  }) : super(key: key);

  final String hint;
  final bool isPassword;
  final TextEditingController controller;

  //Tenemos que crearle el estado para saber si está pulsado o no
  @override
  _InputState createState() => _InputState();
}

class _InputState extends State<Input> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      obscureText: widget.isPassword ? _obscureText : false,
      decoration: InputDecoration(
        labelText: widget.hint,
        labelStyle: const TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(26),
          borderSide: BorderSide(color: Colores.starterWhite),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(26),
          borderSide: BorderSide(color: Colores.primaryColor),
        ),
        suffixIcon: widget.isPassword
            ? IconButton(
          //Si es true
          icon: Icon(_obscureText
              ? Icons.visibility_outlined
              : Icons.visibility_off_outlined),
          onPressed: () {
            setState(() {
              _obscureText = !_obscureText;
            });
          },
        )
        //Si es falso
            : const Icon(Icons.email_outlined),
      ),
    );
  }
}