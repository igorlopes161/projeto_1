
import 'package:flutter/material.dart';

class Tela1View extends StatefulWidget {
  const Tela1View({super.key});

  @override
  State<Tela1View> createState() => _Tela1ViewState();
}
//
//TELA LOGIN
//
class _Tela1ViewState extends State<Tela1View> {
  TextEditingController _contLogin = TextEditingController();
  TextEditingController _contSenha = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Image.asset(
              'assets/shopcar.png',
              width: 200,
              height: 200,
            ),

            TextField(
            controller: _contLogin,
            decoration: InputDecoration(
            labelText: 'Digite seu login: ',
              ),
            ),

            TextField(
            controller: _contSenha,
            decoration: InputDecoration(
            labelText: 'Digite sua senha: ',
              ),
            ),

            SizedBox(height: 25.0),

            Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

            TextButton(
              child: Text('Esqueci a senha'),
              onPressed: () {
                print('Pressed');

                  Navigator.pushNamed(
                  context,
                  't2',
                );
              },
            ),
             
            SizedBox(width: 16.0),

            OutlinedButton(
              onPressed: () {
                //
                // Navegar para Tela 3 lista de Compras
                //

              String login = _contLogin.text;
              String senha = _contSenha.text;

                print('Login: $login');
                print('Senha: $senha');

                Navigator.pushNamed(
                  context,
                  't3',
                );
              },
              child: Text('Entrar'),
            ),

            ],
           ),

            SizedBox(height: 16.0),

            OutlinedButton(
              onPressed: () {
                //
                // Navegar para Tela 2 cadastro
                //

                Navigator.pushNamed(
                  context,
                  't2',
                );
              },
              child: Text('Novo Usuario'),
            ),

          ],
        ),
      ),
    );
  }
}
