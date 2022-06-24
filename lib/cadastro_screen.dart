import 'package:flutter/material.dart';
import 'package:lista_afazeres/elementos_cadastro_screen.dart';

class CadastroScreen extends StatefulWidget {
  const CadastroScreen({Key? key}) : super(key: key);

  @override
  _CadastroScreenState createState() => _CadastroScreenState();
}

class _CadastroScreenState extends State<CadastroScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de afazeres'),
      ),
      body: SingleChildScrollView(
        child: ElementosCadastroScreen(),
      ),
    );
  }
}
