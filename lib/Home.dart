import 'dart:math';
import 'package:cara_ou_coroa/Game.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  void _exibirResultado(){

    var itens = ["cara", "coroa"];
    var numero = Random().nextInt(itens.length);
    var resultado = itens[numero];

    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Game(resultado))
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff61BD8C),
      child: Column(
        spacing: 50,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("images/logo.png"),
          
          GestureDetector(
            onTap: (){
              _exibirResultado();
            },
            child: Image.asset("images/botao_jogar.png"),
          ),
        ],
      ),
    );
  }
}
