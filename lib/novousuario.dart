import 'package:flutter/material.dart';

class NovoUsuarioScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Novo Usuário")
      ),
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            textCapitalization: TextCapitalization.characters,
            decoration: InputDecoration(
                labelText: "Nome Completo"
            ),
            keyboardType: TextInputType.name,
          ),
          TextField(
            textCapitalization: TextCapitalization.characters,
            decoration: InputDecoration(
                labelText: "E-mail"
            ),
            keyboardType: TextInputType.emailAddress,
          ),
          Padding(padding: EdgeInsets.only(bottom: 15),
            child: TextField(
              textCapitalization: TextCapitalization.characters,
              decoration: InputDecoration(
                  labelText: "Senha"
              ),
              keyboardType: TextInputType.number,
              obscureText: true,
            ),
          ),
          ElevatedButton(
              child: Text('CADASTRAR'),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 100),
              ),
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/');
              })

        ],
      ),
    );
  }
}