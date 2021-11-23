import 'package:flutter/material.dart';

class CadastroScreen extends StatefulWidget {
  @override
  State<CadastroScreen> createState() => _CadastroScreenState();
}

class _CadastroScreenState extends State<CadastroScreen> {
  String _nome = '';
  String _numero ='';

  String _cod = '';

  String _val = '';

  void pressionaSalvar(BuildContext context) {
    print(" ${_nome}, ${_numero}, ${_cod}, ${_val}");
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Cadastrar Novo Cartão")
      ),
      body: Column(
        children: [
          TextField(
            textCapitalization: TextCapitalization.characters,
            decoration: InputDecoration(
                labelText: "Nome no Cartão"
            ),
            keyboardType: TextInputType.name,
            onChanged: (text) => setState(() => _nome = text),
          ),
          TextField(
              textCapitalization: TextCapitalization.characters,
              decoration: InputDecoration(
                  labelText: "Número do Cartão"
              ),
              keyboardType: TextInputType.number,
              onChanged: (text) => setState(() => _numero = text),
          ),
          TextField(
              textCapitalization: TextCapitalization.characters,
              decoration: InputDecoration(
                  labelText: "Código de Segurança"
              ),
              keyboardType: TextInputType.number,
              onChanged: (text) => setState(() => _cod = text),
          ),
          Padding(padding: EdgeInsets.only(bottom: 15),
            child: TextField(
                textCapitalization: TextCapitalization.characters,
                decoration: InputDecoration(
                    labelText: "Validade"
                ),
                keyboardType: TextInputType.datetime,
                onChanged: (text) => setState(() => _val = text),
            ),
          ),
          ElevatedButton(
              child: Text('SALVAR'),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 100),
              ),
              onPressed: () { pressionaSalvar(context);}
              ),

        ],
      ),
    );
  }
}