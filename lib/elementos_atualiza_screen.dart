import 'package:lista_afazeres/Models/cadastro_tarefas.dart';
import 'package:sqflite/sqflite.dart';
import 'package:flutter/material.dart';
import 'package:lista_afazeres/elemento_padding.dart';
import 'Controllers/databasesqlite.dart';


class ElementosAtualizaScreen extends StatefulWidget {
  const ElementosAtualizaScreen({Key? key}) : super(key: key);

  @override
  State<ElementosAtualizaScreen> createState() => _ElementosAtualizaScreenState();
}

class _ElementosAtualizaScreenState extends State<ElementosAtualizaScreen> {

  TextEditingController controlador_id = TextEditingController();
  TextEditingController controlador_autor = TextEditingController();
  TextEditingController controlador_titulo = TextEditingController();
  TextEditingController controlador_descricao = TextEditingController();
  TextEditingController controlador_temp_exec = TextEditingController();


  Future<void> UpdateBanco() async {
    int id = int.parse(controlador_id.text);
    String autor = controlador_autor.text;
    String titulo = controlador_titulo.text;
    String descricao = controlador_descricao.text;
    int tempo_exec = int.parse(controlador_temp_exec.text);
    final database = await DatabaseSQLite().openConnection();

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
              child: Text('Passe o ID da tarefa para ser Atualizada.', style: TextStyle(fontWeight: FontWeight.bold),)),
        ),
        ElementoPadding(texto: 'ID para Atualizar', controlador: controlador_id, ),
        ElementoPadding(texto: 'Atualiza Autor', controlador: controlador_autor, ),
        ElementoPadding(texto: 'Atualiza Titulo', controlador: controlador_titulo),
        ElementoPadding(texto: 'Atualiza Descrição da Atividade', controlador: controlador_descricao),
        ElementoPadding(texto: 'Atualiza Tempo de Execução', controlador: controlador_temp_exec),
        Container(
          width: 330,
          height: 80,
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: ElevatedButton.icon(onPressed: UpdateBanco, icon: Icon(Icons.update), label: Text("Atualizar Tarefa")),
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