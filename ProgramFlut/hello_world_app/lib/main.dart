import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hello_world_app/presentacion/screens/counters/counter_functions_screen.dart';
//import 'package:hello_world_app/presentacion/screens/counters/counter_screen.dart';

void main(){
  runApp(MyApp()); //un widgwt puede ser cualquier elemento
}

class MyApp extends StatelessWidget{
  const MyApp({super.key}); //un contructor para que no maque este error

  @override
  Widget build(BuildContext context) {
    return  MaterialApp( //derivado a que no cambiara este valor en ningun punto de su construccion
      debugShowCheckedModeBanner: false, //Es para que no aparezca la alerta de que esta en modo debuging
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.red // Genera una caleta de colores en la app
      ),
      home: const CounterFunctionsScreen() 
      
    );
  }

}