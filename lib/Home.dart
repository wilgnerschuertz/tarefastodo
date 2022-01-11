import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  // Início Controlador

  TextEditingController _controllerTextField = TextEditingController();

  // Fim Controlador


  // Início das Funções dos Botões


  _salvar() {

  }

  _recuperar(){

  }

  _remover(){

  }

  // Fim das Funções dos Botões

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dados'),
      ),
      
      
      body: Container(
        padding: EdgeInsets.all(32),
        child: Column(
          children: [
           const Text(
              'Nada Salvo'
            ),
            TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: 'Digite Aqui'),
              controller: _controllerTextField,
            ),
            Row(
              children: [
                ElevatedButton(
                  child: const Text(
                      "Salvar",
                      style: TextStyle(
                          fontSize: 20
                      )
                  ),
                  onPressed: _salvar,
                ),ElevatedButton(
                  child: const Text(
                      "Salvar",
                      style: TextStyle(
                          fontSize: 20
                      )
                  ),
                  onPressed: _recuperar,
                ),
                ElevatedButton(
                  child: const Text(
                      "Remover",
                      style: TextStyle(
                          fontSize: 20
                      )
                  ),
                  onPressed: _remover,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
