import 'package:flutter/material.dart';
import 'login.dart';
import 'lista.dart';
import 'cadastro.dart';
import 'novousuario.dart';

void main() {
  runApp(MeuApp());
}

class MeuApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Meu Aplicativo",
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      routes: {
        '/': (context) => LoginScreen(),
        '/novousuario': (context) => NovoUsuarioScreen(),
        '/lista': (context) => ListaScreen(),
        '/cadastro': (context) => CadastroScreen()
      },
    );
  }
}
