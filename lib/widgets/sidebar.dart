import 'package:flutter/material.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(25),
            child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.close,
                  color: Color.fromARGB(255, 0, 0, 0),
                )),
          ),
          ListTile(
            title: const Text('Home',
                style: TextStyle(
                  color: Color.fromARGB(255, 2, 2, 2),
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                )),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Text('About me',
                style: TextStyle(
                  color: Color.fromARGB(255, 2, 2, 2),
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                )),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Text('Skills',
                style: TextStyle(
                  color: Color.fromARGB(255, 2, 2, 2),
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                )),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Text('Projects',
                style: TextStyle(
                  color: Color.fromARGB(255, 2, 2, 2),
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                )),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          
        ],
      ),
    );
  }
}
