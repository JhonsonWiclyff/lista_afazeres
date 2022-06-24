import 'package:sqflite/sqflite.dart';
import 'package:flutter/material.dart';
import 'package:lista_afazeres/elemento_padding.dart';
import 'Controllers/databasesqlite.dart';


class ElementosCadastroScreen extends StatefulWidget {
  const ElementosCadastroScreen({Key? key}) : super(key: key);

  @override
  State<ElementosCadastroScreen> createState() => _ElementosCadastroScreenState();
}

class _ElementosCadastroScreenState extends State<ElementosCadastroScreen> {

  TextEditingController controlador_autor = TextEditingController();
  TextEditingController controlador_titulo = TextEditingController();
  TextEditingController controlador_descricao = TextEditingController();
  TextEditingController controlador_temp_exec = TextEditingController();

  Future<void> salvarBanco() async {
    String autor = controlador_autor.text;
    String titulo = controlador_titulo.text;
    String descricao = controlador_descricao.text;
    int tempo_exec = int.parse(controlador_temp_exec.text);
    final database = await DatabaseSQLite().openConnection();
    database.insert('tarefa', {'autor': autor, 'titulo': titulo, 'descricao': descricao, 'tempo_exec': tempo_exec});
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
              child: Text('Preenchimento das Tarefas.', style: TextStyle(fontWeight: FontWeight.bold),)),
        ),
        ElementoPadding(texto: 'Autor', controlador: controlador_autor, ),
        ElementoPadding(texto: 'Titulo', controlador: controlador_titulo),
        ElementoPadding(texto: 'Descrição da Atividade', controlador: controlador_descricao),
        ElementoPadding(texto: 'Tempo de Execução', controlador: controlador_temp_exec),
        Container(
          width: 330,
          height: 80,
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: ElevatedButton.icon(onPressed: salvarBanco, icon: Icon(Icons.save_alt), label: Text("Salvar")),
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