import 'package:sqflite/sqflite.dart';
import 'package:flutter/material.dart';
import 'package:lista_afazeres/elemento_padding.dart';
import 'Controllers/databasesqlite.dart';


class ElementosDeleteScreen extends StatefulWidget {
  const ElementosDeleteScreen({Key? key}) : super(key: key);

  @override
  State<ElementosDeleteScreen> createState() => _ElementosDeleteScreenState();
}

class _ElementosDeleteScreenState extends State<ElementosDeleteScreen> {

  TextEditingController controlador_id = TextEditingController();


  Future<void> DeleteBanco() async {
    int id = int.parse(controlador_id.text);
    final database = await DatabaseSQLite().openConnection();
    database.delete('tarefa', where: 'id', whereArgs: [id]);
  }

  @override
  void initState(){
    super.initState();
    _database();
  }

  Future<void> _database() async{
    final database = await DatabaseSQLite().openConnection();
  }

  @override
  Widget build(BuildContext context) {

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 20, 0, 30),
          child: Container(
              width: 300,
              child: Text('Passe o ID da tarefa para ser excluida.', style: TextStyle(fontWeight: FontWeight.bold),)),
        ),
        ElementoPadding(texto: 'ID para Exclusão', controlador: controlador_id, ),
        Container(
          width: 330,
          height: 80,
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: ElevatedButton.icon(onPressed: DeleteBanco, icon: Icon(Icons.recycling_sharp), label: Text("Excluir Tarefa")),
          ),
        ),
        Container(
          width: 330,
          height: 80,
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: ElevatedButton.icon(onPressed: (){Navigator.pushReplacementNamed(context, '/about_screen');}, icon: Icon(Icons.business_outlined), label: Text("Sobre Nós")),
          ),
        )
      ],
    );
  }
}