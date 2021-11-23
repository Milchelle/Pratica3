import 'package:flutter/material.dart';
import 'lista.dart';
import 'novousuario.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/cad.png", height: 100, width: 100),
          Text("Blocked Card",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                  color: Colors.deepPurple)),
          TextField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
                labelText: "E-mail", border: OutlineInputBorder()),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 15),
            child: TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Senha",
                border: OutlineInputBorder(),
              ),
              obscureText: true,
            ),
          ),
          ElevatedButton(
            child: Text('ENTRAR'),
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 100),
            ),
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/lista');
            }
          ),
          TextButton(
              child: Text("Não possui uma Conta? Criar"), onPressed: () {
            Navigator.pushNamed(context, '/novousuario');
          })
        ],
      ),
    );
  }
}
