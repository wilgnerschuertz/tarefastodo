import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  // Início Controlador
  String _textoSalvo = 'Informação';
  TextEditingController _controllerTextField = TextEditingController();

  // Fim Controlador


  // Início das Funções dos Botões
  _salvar() async {
    String _valorDigitado = _controllerTextField.text;
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('nome', _valorDigitado);
  }
  _recuperar() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _textoSalvo = prefs.getString('nome') ?? 'Sem Informação';
    });
  }
  _remover() async{
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('nome');
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
            Text( _textoSalvo ),
            TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: 'Digite Aqui'),
              controller: _controllerTextField,
            ),
            Row(
              children: [
                ElevatedButton(
                  child:  Text(
                      "Salvar",
                      style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'verdana'
                      )
                  ),
                  onPressed: _salvar,
                ),ElevatedButton(
                  child:  Text(
                      "Recuperar",
                      style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'verdana'
                      )
                  ),
                  onPressed: _recuperar,
                ),
                ElevatedButton(
                  child:  Text(
                      "Remover",
                      style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'verdana'
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
