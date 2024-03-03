import "package:flutter/material.dart";

import "../Componentes/boton_recordar.dart";
import "../Componentes/input_field.dart";
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
                                  BotonRecordarme(),
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
