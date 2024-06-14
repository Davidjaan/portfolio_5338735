import 'package:flutter/material.dart';
import 'package:portfolio_5338735/widgets/navbar_logo.dart';

class NavbarDesktop extends StatelessWidget {
  const NavbarDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return // Navbar
        Container(
      height: 50,
      margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
      padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 30),
      width: double.maxFinite,
      color: const Color.fromARGB(255, 255, 255, 255),
       
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const NavbarLogo(),
          const Spacer(),
          TextButton(
              onPressed: () {},
              child: const Text(
                'Home',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    color: Color.fromARGB(255, 0, 0, 0)),
              )),
          TextButton(
              onPressed: () {},
              child: const Text(
                'About me',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    color: Color.fromARGB(255, 0, 0, 0)),
              )),
          TextButton(
              onPressed: () {},
              child: const Text('Skills',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      color: Color.fromARGB(255, 0, 0, 0)))),
          TextButton(
              onPressed: () {},
              child: const Text('Projects',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      color: Color.fromARGB(255, 0, 0, 0)))),
        ],
      ),
    );
  }
}
