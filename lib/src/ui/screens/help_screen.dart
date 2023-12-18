import 'package:flutter/material.dart';

class HelpScreen extends StatefulWidget {
  const HelpScreen();

  @override
  _HelpScreenState createState() => _HelpScreenState();
}

class _HelpScreenState extends State<HelpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Aide'.toUpperCase()),
      ),
      body: Container(
        child: const Center(
          child: Text('Vue en cours de développement...'),
        ),
      ),
    );
  }
}
