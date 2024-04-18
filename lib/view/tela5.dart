import 'package:flutter/material.dart';

class Tela5View extends StatefulWidget {
  const Tela5View({Key? key}) : super(key: key);

  @override
  State<Tela5View> createState() => _Tela5ViewState();
}
//
//TELA SOBRE
//

class _Tela5ViewState extends State<Tela5View> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sobre'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                'Este aplicativo foi desenvolvido por Igor Henrique. \nTem como intuito facilitar a compra dos usuários. \nPermitindo que eles organizem a compra em listas, adicionem, editem e excluam produtos.',
                style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),

            ),
            SizedBox(height: 16.0),
            Row (
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlinedButton(
                  onPressed: () {
                    //
                    // Navegar para Tela 4
                    //
                    Navigator.pop(context);
                  },
                  child: Text('Voltar'),
                ),
                SizedBox(width: 16.0), // Espaçamento entre os botões
                OutlinedButton(
                  onPressed: () {
                    //
                    // Navegar para Tela 1
                    //
                    Navigator.pushNamed(context, 't1');
                  },
                  child: Text('Menu'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
