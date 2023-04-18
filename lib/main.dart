import 'package:flutter/material.dart';
import 'dart:math';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'APP frases aleatórias',
    home: frases(),
  ));
}
class frases extends StatefulWidget {
  const frases({Key? key}) : super(key: key);

  @override
  State<frases> createState() => _frasesState();
}
class _frasesState extends State<frases> {

  var _frases = [
    'você gosta de fenômenos da natureza? prazer desastre natural!',
    'asa de urubu, pena de galinha se você quer ficar comigo, de uma risadinha',
    'se você fosse um sanduíche teu nome seria X-Princesa(o)',
    'nem a mais potente placa de vídeo seria capaz de reproduzir os gráficos de sua beleza',
    'você é sempre gostosa(o) assim ou hoje tá fantasiada(o) de lasanha?',
    'use aquele shampoo para esquecer a(o) ex, o Euserve!',
    'você gosta de toddy? porque eu posso ser toddynho seu',
    'uau como tu é linda(o), parece até uma pista da hot wheels ataque tubarão',
    'você é linda(o) assim  mesmo ou usa produtos ivone?',
    'diga não as drogas, mas se a droga for eu diga sim!',
    'se você fosse um computador tu seria um DELL, prq você me faz DELLirar!',
  ];

  var _frasesGerada= 'Clique abaixo para gerar uma cantada!';

  void _gerarFrase(){

    var numSorteadofrase = Random().nextInt(_frases.length);

    setState(() {
      _frasesGerada=_frases[numSorteadofrase];

    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cantadas do dia'),
        backgroundColor: Colors.purple
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset('image/cantadas.png'
              ),
              Text(_frasesGerada,
                style: TextStyle(
                  fontSize: 25,
                  fontStyle: FontStyle.italic,
                  color: Colors.deepPurpleAccent,
                ),
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.purple),
                ),
                onPressed: _gerarFrase,
                child: Text('Nova Cantada',
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}