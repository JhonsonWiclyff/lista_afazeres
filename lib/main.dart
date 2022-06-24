import 'package:flutter/material.dart';
import 'package:lista_afazeres/home_screen.dart';
import 'package:lista_afazeres/sobre_nos_screen.dart';
import 'atualizar_screen.dart';
import 'cadastro_screen.dart';
import 'delete_screen.dart';

void main(){
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (_) => HomeScreen(),
        '/cadastro_screen': (_) => CadastroScreen(),
        '/delete_screen': (_) => DeleteScreen(),
        '/update_screen': (_) => AtualizaScreen(),
        '/about_screen': (_) => SobreNosScreen(),
      }
  ));

}