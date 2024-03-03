import 'package:flutter/material.dart';

import '../utiles/SpotifyColors.dart';
import 'buscar.dart';
import 'home.dart';
import 'otros.dart';

class MenuPrincipal extends StatefulWidget {
  const MenuPrincipal({super.key});

  @override
  State<MenuPrincipal> createState() => _MenuPrincipalState();
}

class _MenuPrincipalState extends State<MenuPrincipal> {
  int _seleccionado = 0;

  final List screen = [const Home(), const Buscar(), const Mas()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: screen[_seleccionado],
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colores.primaryColor,
        unselectedItemColor: Colors.white,
        enableFeedback: true, //Vibraciones
        currentIndex: _seleccionado,
        backgroundColor: Colors.black,
        landscapeLayout: BottomNavigationBarLandscapeLayout.spread,
        onTap: (index) {
          setState(() {
            _seleccionado = index;
          });
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              activeIcon: Icon(Icons.home_outlined),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.search_outlined),
              activeIcon: Icon(Icons.search_outlined),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.more_horiz),
              activeIcon: Icon(Icons.more_horiz),
              label: "")
        ],
      ),
    );
  }
}
