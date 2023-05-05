import 'package:atv1/perguntas.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}


 class MyApp extends StatefulWidget{
  @override
  State<MyApp> createState() => _MyAppState();
 }

 class _MyAppState extends State<MyApp> {

  var perguntas = [
    "qual sua cor favorita?",
    "qual seu estado favorito?",
    "qual sua escola favorita?",
    "qual seu signo?",
  ];
  
  var contador = 0;

  void acao(){
    setState(() {
      contador : contador++;
    });
    print(contador);
  }


  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: Text("perguntas e respostas"),
            ),
            body: Column(
              children: [
                Text(perguntas[contador]),
                ElevatedButton(
                  onPressed: acao,
                  child: Text("clique"),
                ),
                ElevatedButton(
                  onPressed: () {
                    print("outra função");
                  },
                  child: Text("clique"),
                ),
                ElevatedButton(
                  onPressed: () => print("função arrow"),
                  child: Text("meu botao"),
                ),
                Column(children: <Widget>[
                  Text('aprendendo'),
                  Text('programação'),
                  Text('flutter'),
                ]),
              ],
            )));
}
 }