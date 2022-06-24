import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ToDoList - Demo'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 330,
              height: 80,
              child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: ElevatedButton.icon(onPressed: (){Navigator.pushNamed(context, '/cadastro_screen');}, icon: Icon(Icons.next_plan), label: Text("Cadastrar Tarefas")),
              ),
            ),
            Container(
              width: 330,
              height: 80,
              child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: ElevatedButton.icon(onPressed: (){Navigator.pushNamed(context, '/delete_screen');}, icon: Icon(Icons.next_plan), label: Text("Deletar Tarefas")),
              ),
            ),
            Container(
              width: 330,
              height: 80,
              child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: ElevatedButton.icon(onPressed: (){Navigator.pushNamed(context, '/update_screen');}, icon: Icon(Icons.next_plan), label: Text("Atualizar Tarefas")),
              ),
            ),
            Container(
              width: 330,
              height: 80,
              child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: ElevatedButton.icon(onPressed: (){Navigator.pushNamed(context, '/about_screen');}, icon: Icon(Icons.next_plan), label: Text("Sobre Nós")),
              ),
            )
          ],
        ),
      ),
    );
  }
}
