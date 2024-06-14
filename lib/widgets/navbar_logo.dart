import 'package:flutter/material.dart';

class NavbarLogo extends StatelessWidget {
  const NavbarLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Faizi',
      style: TextStyle(
          color: Color.fromARGB(255, 25, 0, 255),
          fontSize: 24,
          fontWeight: FontWeight.bold,
          decoration: TextDecoration.underline,
          decorationColor: Color.fromARGB(255, 25, 0, 255)),
    );
  }
}
