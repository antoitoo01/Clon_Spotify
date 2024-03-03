import "package:flutter/material.dart";

import "../utiles/SpotifyColors.dart";
import "menu_principal.dart";

class Login extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    bool isSelected = true;
    return Scaffold(
        backgroundColor: Colors.black,
        body: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: SizedBox(
            height: height,
            child: Stack(
              children: [
                Container(
                  height: height / 2.1,
                  width: width,
                  decoration: BoxDecoration(
                      color: Colores.primaryColor,
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(60),
                          bottomRight: Radius.circular(60))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(height: 80),
                      SizedBox(
                          height: 70,
                          child: Image.asset(
                              'lib/res/imagenes/Spotify_Logo_White.png')),
                      const SizedBox(height: 20), //Esto es un margen.
                      const Text("Millones de canciones, gratis en Spotify",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Roboto',
                              fontStyle: FontStyle.normal))
                    ],
                  ),
                ),
                SingleChildScrollView(
                    child: SizedBox(
                        height: height,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            //Formulario Login
                            Container(
                              height: height / 1.7,
                              margin: const EdgeInsets.all(20),
                              padding: const EdgeInsets.fromLTRB(32, 35, 32, 0),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(32)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  const Text("Iniciar sesión",
                                      style: TextStyle(
                                          fontSize: 23,
                                          fontWeight: FontWeight.w500),
                                      textAlign: TextAlign.center),
                                  const SizedBox(height: 22),
                                  SizedBox(
                                      height: 40,
                                      child: Input(
                                          hint: 'Email o nombre de usuario',
                                          isPassword: false,
                                          controller: emailController)),
                                  const SizedBox(height: 16),
                                  //Margen
                                  SizedBox(
                                      height: 40,
                                      child: Input(
                                          hint: "Contraseña",
                                          isPassword: true,
                                          controller: passwordController)),

                                  BotonRecordarme()
                                  //Botón para mostrar recordar tus credenciales
                                  /*
                                  SwitchListTile.adaptive(
                                      value: isSelected,
                                      activeTrackColor: Colores.primaryColor,
                                      onChanged: ((bool newValue) {
                                        setState((){
                                          isSelected = newValue;
                                        })
                                      }),
                                      contentPadding: EdgeInsets.zero,
                                      title: Text("Recordarme",
                                          style: TextStyle(
                                              color: Colores.starterWhite,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400)))*/,
                                  //Botón Login
                                  MaterialButton(
                                      onPressed: () => {
                                            if (emailController
                                                    .text.isNotEmpty &&
                                                passwordController
                                                    .text.isNotEmpty)
                                              {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            const MenuPrincipal()))
                                              }
                                          },
                                      color: Colores.primaryColor,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(31)),
                                      height: 40,
                                      child: const Text(
                                        "Iniciar sesión",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.w700),
                                      )),
                                  const SizedBox(height: 16), //Margen

                                  Row(
                                    children: [
                                      //Linea separadora
                                      Expanded(
                                          child: Divider(
                                              thickness: 1,
                                              height: 1,
                                              color: Colores.starterWhite)),
                                      const SizedBox(width: 12),
                                      //Margen                             ),
                                      Text(
                                        "O",
                                        style: TextStyle(
                                            color: Colores.starterWhite,
                                            fontSize: 13,
                                            fontWeight: FontWeight.w700),
                                      ),
                                      const SizedBox(width: 12),
                                      //Margen
                                      //Linea separadora
                                      Expanded(
                                          child: Divider(
                                              thickness: 1,
                                              height: 1,
                                              color: Colores.starterWhite))
                                    ],
                                  ),
                                  const SizedBox(height: 12),

                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                          height: 40,
                                          child: Image.asset(
                                              'lib/res/imagenes/facebook.png')),
                                      const SizedBox(width: 16),
                                      SizedBox(
                                          height: 40,
                                          child: Image.asset(
                                              'lib/res/imagenes/github-logo.png')),
                                    ],
                                  ),
                                  const SizedBox(height: 16),
                                  Text("¿Has olvidado tu contraseña?",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w300,
                                          color: Colores.starterWhite),
                                      textAlign: TextAlign.center)
                                ], //Fin children Column
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("¿No tienes una cuenta?",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: Colores.starterWhite)),
                                SizedBox(width: 10),
                                Text("Regístrate ahora",
                                    style: TextStyle(
                                        color: Colores.primaryColor,
                                        fontWeight: FontWeight.w700)),
                              ],
                            ),
                            //Último margen inferior
                            const SizedBox(height: 30)
                          ],
                        )))
              ],
            ),
          ),
        ));
  }
}

//Boton recordarme:
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
        activeTrackColor: Colores.primaryColor, // Usando un color de ejemplo
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



//Campo de introducción de credenciales
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
        labelStyle: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
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
