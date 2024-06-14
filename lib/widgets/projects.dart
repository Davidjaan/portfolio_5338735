import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart'; // Add this import to handle the URL launch

class Projects extends StatelessWidget {
  const Projects({super.key});

  // Function to handle URL launch
  void _launchURL() async {
    const url = 'https://www.xxxxxx.de';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white, // Set the background color to white
      padding: const EdgeInsets.all(16.0),
      child: Center(
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          elevation: 5,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Name: Flutter Portfolio',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  'Beschreibung: Portfolio Webseite',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 8),
                GestureDetector(
                  onTap: _launchURL,
                  child: const Text(
                    'www.xxxxxx.de',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.blue,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
