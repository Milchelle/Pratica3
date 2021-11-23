import 'package:flutter/material.dart';
import 'login.dart';

class ListaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [ GestureDetector(
          child: Icon(Icons.logout),
        onTap: () {
          Navigator.pushReplacementNamed(context, '/');
          },
      )
    ],
        title: Text('Cards'),
      ),
      body: ListView.builder(
          itemCount: 5,
          itemBuilder: (ctxt, index) {
            return ListTile(
              leading: null,
              title: Text("Visa"),
              subtitle: Text("**** **** **** **97"),
              trailing: Icon(Icons.delete),
            );

          },
          ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            Navigator.pushNamed(context, '/cadastro');
          }
      ),
    );
  }
}