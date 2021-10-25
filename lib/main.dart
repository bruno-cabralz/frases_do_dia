import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _frases = [
    'A persistência é o caminho do êxito. (Charles Chaplin)',
    'As pessoas costumam dizer que a motivação não dura sempre. Bem, nem o efeito do banho, por isso recomenda-se diariamente. (Zig Ziglar)',
    'Motivação é a arte de fazer as pessoas fazerem o que você quer que elas façam porque elas o querem fazer. (Dwight Eisenhower)',
    'Toda ação humana, quer se torne positiva ou negativa, precisa depender de motivação. (Dalai Lama)',
    'No meio da dificuldade encontra-se a oportunidade.',
    'Lute. Acredite. Conquiste. Perca. Deseje. Espere. Alcance. Invada. Caia. Seja tudo o quiser ser, mas, acima de tudo, seja você sempre.',
    'Eu faço da dificuldade a minha motivação. A volta por cima vem na continuação. (Charlie Brown Jr)',
    'A verdadeira motivação vem de realização, desenvolvimento pessoal, satisfação no trabalho e reconhecimento. (Frederick Herzberg)',
    'Pedras no caminho? Eu guardo todas. Um dia vou construir um castelo. (Nemo Nox)',
    'É parte da cura o desejo de ser curado. (Sêneca)',
    'Tudo o que um sonho precisa para ser realizado é alguém que acredite que ele possa ser realizado. (Roberto Shinyashiki)',
    'O que me preocupa não é o grito dos maus. É o silêncio dos bons. (Martin Luther King)',
    'O insucesso é apenas uma oportunidade para recomeçar com mais inteligência. (Henry Ford)',
    'Você precisa fazer aquilo que pensa que não é capaz de fazer. (Eleanor Roosevelt)',
    'O sucesso é ir de fracasso em fracasso sem perder o entusiasmo.',
    'Nossa maior fraqueza está em desistir. O caminho mais certo de vencer é tentar mais uma vez. (Thomas Edison)'
  ];

  var _fraseGerada = 'Clique abaixo para gerar uma frase!';

  void _gerarFrase() {
    var numeroSorteado = Random().nextInt(_frases.length);

    setState(() {
      _fraseGerada = _frases[numeroSorteado];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Frases do dia'),
        backgroundColor: Colors.green,
      ),
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset('images/logo.png'),
            Text(
              _fraseGerada,
              textAlign: TextAlign.justify,
              style: const TextStyle(
                  fontSize: 22,
                  fontStyle: FontStyle.italic,
                  color: Colors.black),
            ),
            // ignore: deprecated_member_use
            RaisedButton(
                onPressed: _gerarFrase,
                child: const Text(
                  'Nova frase',
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                color: Colors.green)
          ],
        ),
      ),
    );
  }
}
