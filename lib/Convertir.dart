// Define a Custom Form Widget
import 'package:flutter/material.dart';
class Convertir extends StatefulWidget {
  @override
  _Convertir createState() => _Convertir();
}


class _Convertir extends State<Convertir> {
  //para tener acceso a los valors de texfield
  final myController = TextEditingController();

  @override
  void dispose() {
    // al cerrar se elimina el controlador
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //arbol de widget
    return Scaffold(
      appBar: AppBar(
        title: Text('convertir temperatura'),
      ),
      // contenedor principal de la pagina
      body: Padding(
          padding: const EdgeInsets.all(16.0),
          //una llista por que contine varios elementos
          child:  ListView(
            children: <Widget>[
              TextField(
                controller: myController,
              ),
              RaisedButton(
                child: Text("farengit"),
                onPressed: () {
                  return showDialog(
                    context: context,
                    builder: (context) {
                      double resultado;
                      resultado=( int.parse( myController.text)*5/9 ) +32;
                      return AlertDialog(
                        content: Text( resultado.toString()+" grados farengeit"),
                      );
                    },
                  );
                },
              ),
              RaisedButton(
                child: Text("centigrados"),
                onPressed: () {
                  return showDialog(
                    context: context,
                    builder: (context) {
                      double resultado;
                      resultado=(int.parse( myController.text)-32)*5/9 ;
                      return AlertDialog(
                        content: Text( resultado.toString()+" grados farengeit"),
                      );
                    },
                  );
                },
              )
            ],
          )
      ),
    );
  }
}