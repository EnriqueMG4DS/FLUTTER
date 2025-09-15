import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp()); //un widgwt puede ser cualquier elemento
}

class MyApp extends StatelessWidget{
  const MyApp({super.key}); //un contructor para que no maque este error

  @override
  Widget build(BuildContext context) {
    return const MaterialApp( //derivado a que no cambiara este valor en ningun punto de su construccion
      debugShowCheckedModeBanner: false, //Es para que no aparezca la alerta de que esta en modo debuging
      home: Scaffold(// el Scaffols se usa para para centralizar pantallas como la funcion DIV en HTML
        body: Center(child: Text('Hola mundo')),

      )
    );
  }

}