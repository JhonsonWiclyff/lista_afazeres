import 'package:flutter/material.dart';

import 'elementos_delete_screen.dart';


class DeleteScreen extends StatefulWidget {
  const DeleteScreen({Key? key}) : super(key: key);

  @override
  _DeleteScreenState createState() => _DeleteScreenState();
}

class _DeleteScreenState extends State<DeleteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Deletar Tarefas'),
      ),
      body: SingleChildScrollView(
        child: ElementosDeleteScreen(),
      ),
    );
  }
}
