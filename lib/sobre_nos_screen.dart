import 'package:flutter/material.dart';
import 'elementos_sobre_nos_screen.dart';


class SobreNosScreen extends StatefulWidget {
  const SobreNosScreen({Key? key}) : super(key: key);

  @override
  _SobreNosScreenState createState() => _SobreNosScreenState();
}

class _SobreNosScreenState extends State<SobreNosScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sobre 11deFev Tecnology'),
      ),
      body: SingleChildScrollView(
        child: ElementosSobreNosScreen(),
      ),
    );
  }
}
