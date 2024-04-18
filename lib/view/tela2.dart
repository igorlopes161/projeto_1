// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Tela2View extends StatefulWidget {
  const Tela2View({super.key});

  @override
  State<Tela2View> createState() => _Tela2ViewState();
}
//
//TELA CADASTRO e ESQUECEU
//

class _Tela2ViewState extends State<Tela2View> {
  @override
  Widget build(BuildContext context) {

    //
    // Recuperar a informação recebida da Tela 1
   // final String nome = ModalRoute.of(context)!.settings.arguments as String;

    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastro usuario e Recupera senha'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
            decoration: InputDecoration(
            labelText: 'Digite o email: ',
              ),
            ),

            TextField(
            decoration: InputDecoration(
            labelText: 'Digite o usuario desejado: ',
              ),
            ),

            TextField(
            decoration: InputDecoration(
            labelText: 'Digite a senha desejada: ',
              ),
            ),

            SizedBox(height: 16.0),
            
            Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            OutlinedButton(
              onPressed: () {
                //
                // Navegar para Tela 1
                //
                Navigator.pop(context);
              },
              child: Text('Voltar'),
            ),

            SizedBox(width: 16.0),

            OutlinedButton(
              onPressed: () {
                //
                // Navegar para Tela 3
                //
                Navigator.pushNamed(context, 't3');
              },
              child: Text('Abrir'),
              ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
