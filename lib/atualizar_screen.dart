import 'package:flutter/material.dart';
import 'package:lista_afazeres/elementos_atualiza_screen.dart';

import 'elementos_delete_screen.dart';


class AtualizaScreen extends StatefulWidget {
  const AtualizaScreen({Key? key}) : super(key: key);

  @override
  _AtualizaScreenState createState() => _AtualizaScreenState();
}

class _AtualizaScreenState extends State<AtualizaScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Atualizar Tarefas'),
      ),
      body: SingleChildScrollView(
        child: ElementosAtualizaScreen(),
      ),
    );
  }
}
