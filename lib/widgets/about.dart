import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white, // Hintergrundfarbe auf weiß setzen
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Name: David Faizi',
            style: TextStyle(fontSize: 18, color: Colors.black),
          ),
          const SizedBox(height: 8),
          const Text(
            'Ich studiere Wirtschaftsinformatik an der Technischen Hochschule Mittelhessen.',
            style: TextStyle(fontSize: 16, color: Colors.black),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const CV()),
              );
            },
            child: const Text('Lebenslauf anzeigen'),
          ),
        ],
      ),
    );
  }
}

class CV extends StatelessWidget {
  const CV({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Hintergrundfarbe auf weiß setzen
      appBar: AppBar(
        title: const Text('Lebenslauf'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: const [
            Text(
              'Lebenslauf',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),
            ),
            SizedBox(height: 16),
            Text(
              'Persönliche Daten',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
            ),
            SizedBox(height: 8),
            Text(
              'Name: David Faizi\n'
              'Geburtsdatum: 14.03.1998 in Frankfurt am Main\n'
              'Adresse: Hausener Obergasse 15a\n'
              '60488 Frankfurt am Main\n'
              'Telefon: 017656470695\n'
              'E-Mail: Davidjaan@live.de',
              style: TextStyle(fontSize: 16, color: Colors.black),
            ),
            SizedBox(height: 16),
            Text(
              'Schule',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
            ),
            SizedBox(height: 8),
            Text(
              '2017-2020 Heinrich-Kleyer-Schule (allgemeines Abitur)\n'
              '2020-aktuell Technische Hochschule Mittelhessen (Studienfach: Wirtschaftsinformatik)',
              style: TextStyle(fontSize: 16, color: Colors.black),
            ),
            SizedBox(height: 16),
            Text(
              'Fremdsprachen',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
            ),
            SizedBox(height: 8),
            Text(
              'Deutsch (fließend ohne Akzent)\n'
              'Englisch (fließend)\n'
              'Persisch (Muttersprache)\n'
              'Französisch (Grundkenntnisse)',
              style: TextStyle(fontSize: 16, color: Colors.black),
            ),
            SizedBox(height: 16),
            Text(
              'Erfahrungen',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
            ),
            SizedBox(height: 8),
            Text(
              'Werkstudent Gesellschaft für Internationale Zusammenarbeit (GIZ): Datenüberprüfung und Büroarbeit.\n'
              'Promoter: direkte Kundenansprache, Produkte beworben',
              style: TextStyle(fontSize: 16, color: Colors.black),
            ),
            SizedBox(height: 16),
            Text(
              'Interessen & Kenntnisse',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
            ),
            SizedBox(height: 8),
            Text(
              'IT-Kenntnisse Programmierung(Java), Umgang mit Datenbanken(SQL), SAP, Office',
              style: TextStyle(fontSize: 16, color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
