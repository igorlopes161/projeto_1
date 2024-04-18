// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Tela3View extends StatefulWidget {
  const Tela3View({super.key});
  
  @override
  State<Tela3View> createState() => _Tela3ViewState();
}
//
//TELA CRIAR LISTAS
//

class _Tela3ViewState extends State<Tela3View> {
  TextEditingController _contNomeLista = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de compras'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
            controller: _contNomeLista,
            decoration: InputDecoration(
            labelText: 'Digite o nome da lista: ',
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
                // Navegar para Tela 4
                //
                String nomeLista = _contNomeLista.text;
                Navigator.pushNamed(
                  context,
                  't4',
                  arguments: nomeLista,
                );
              },
              child: Text('Salvar'),
              ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
