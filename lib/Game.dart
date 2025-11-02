import 'package:flutter/material.dart';

class Game extends StatefulWidget {

  String? resultadoGame;

  Game(this.resultadoGame);

  @override
  State<Game> createState() => _GameState();
}

class _GameState extends State<Game> {
  @override
  Widget build(BuildContext context) {

    var caminhoImagem;
    if(widget.resultadoGame == "cara"){
      caminhoImagem = "images/moeda_cara.png";
    }else {
      caminhoImagem = "images/moeda_coroa.png";
    }

    return Container(
      color: Color(0xff61BD8C),
      child: Column(
        spacing: 50,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Image.asset(caminhoImagem),

          GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: Image.asset("images/botao_voltar.png"),
          ),
        ],
      ),
    );
  }
}