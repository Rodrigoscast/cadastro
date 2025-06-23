import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: CadastroSimples()));
}

class CadastroSimples extends StatefulWidget {
  @override
  _CadastroSimplesState createState() => _CadastroSimplesState();
}

class _CadastroSimplesState extends State<CadastroSimples> {
  final nomeController = TextEditingController();
  final idadeController = TextEditingController();
  String mensagem = '';

  void _cadastrar() {
    setState(() {
      mensagem = 'Nome: ${nomeController.text}, Idade: ${idadeController.text}';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Cadastro Simples')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(controller: nomeController, decoration: InputDecoration(labelText: 'Nome')),
            TextField(controller: idadeController, decoration: InputDecoration(labelText: 'Idade'), keyboardType: TextInputType.number),
            SizedBox(height: 16),
            ElevatedButton(onPressed: _cadastrar, child: Text('Cadastrar')),
            SizedBox(height: 16),
            Text(mensagem),
          ],
        ),
      ),
    );
  }
}
