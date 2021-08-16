import 'package:flutter/material.dart';

class Calculadora extends StatefulWidget {
  @override
  State createState() => new CalculadoraState();
}

class CalculadoraState extends State<Calculadora> {
  // Método Build (que constrói a estrutura do app)
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Calculadora Simples"),
      ),
      body: new Container(
        color: Colors.white,
        padding: const EdgeInsets.all(40.0),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Resultado do Cálculo
            new Text(
              "Resultado: $resultado",
              style: new TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),

            new Padding(padding: const EdgeInsets.only(top: 30)),

            // Campo de Texto (input do valor 1)
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(hintText: "Informe o valor 1"),
              controller: campoValor1,
            ),

            // Campo de Texto (input do valor 2)
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(hintText: "Informe o valor 2"),
              controller: campoValor2,
            ),

            // Espaçamento depois dos inputs
            new Padding(padding: const EdgeInsets.only(top: 50)),

            // Nova linha (row)
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new MaterialButton(
                  //child: new Text("+"),
                  child: new Text(
                    "+",
                    style: new TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  color: Colors.blueGrey,
                  onPressed: somar,
                )
              ],
            ),

            new Padding(padding: const EdgeInsets.only(top: 20)),

            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new MaterialButton(
                  //child: new Text("+"),
                  child: new Text(
                    "-",
                    style: new TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  color: Colors.blueGrey,
                  onPressed: subtrair,
                )
              ],
            ),

            new Padding(padding: const EdgeInsets.only(top: 20)),

            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new MaterialButton(
                  //child: new Text("+"),
                  child: new Text(
                    "x",
                    style: new TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  color: Colors.blueGrey,
                  onPressed: multiplicar,
                )
              ],
            ),

            new Padding(padding: const EdgeInsets.only(top: 20)),

            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new MaterialButton(
                  //child: new Text("+"),
                  child: new Text(
                    "/",
                    style: new TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  color: Colors.blueGrey,
                  onPressed: dividir,
                )
              ],
            ),
          ],
        ),
      ),
    );
  } // fecha o Build

  // Atributos
  num valor1 = 0;
  num valor2 = 0;
  num resultado = 0;

  TextEditingController campoValor1 = new TextEditingController(text: "");
  TextEditingController campoValor2 = new TextEditingController(text: "");

  // Métodos usados para calcular
  void somar() {
    setState(() {
      valor1 = num.parse(campoValor1.text);
      valor2 = num.parse(campoValor2.text);
      resultado = valor1 + valor2;
    });
  }

  void subtrair() {
    setState(() {
      valor1 = num.parse(campoValor1.text);
      valor2 = num.parse(campoValor2.text);
      resultado = valor1 - valor2;
    });
  }

  void multiplicar() {
    setState(() {
      valor1 = num.parse(campoValor1.text);
      valor2 = num.parse(campoValor2.text);
      resultado = valor1 * valor2;
    });
  }

  void dividir() {
    setState(() {
      valor1 = num.parse(campoValor1.text);
      valor2 = num.parse(campoValor2.text);
      resultado = valor1 / valor2;
    });
  }
} // fecha o CalculadoraState
