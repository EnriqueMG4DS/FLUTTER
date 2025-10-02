import 'package:flutter/material.dart';

class textExample extends StatelessWidget {
  const textExample
({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Text('Texto basico'),
        Text('Texto con estilo Grande', 
        style: TextStyle(
          fontSize: 25
        ),),
        Text('Texto con estilo Grande y en negritas', 
        style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold
        ),),
        Text('Texto curvado', style: TextStyle(
          fontStyle: FontStyle.italic,
        )),
        Text('Texto con colores y subrrallado', style: TextStyle(
          color: Colors.white,
          fontSize: 20,
          backgroundColor: Colors.grey,
        ),),
        Text('Texto decorado', style: TextStyle(
          decoration: TextDecoration.underline,
          fontSize: 20,
          color: Colors.red,
          decorationColor: Colors.deepPurpleAccent
          
        ),),
        Text('espaciado entre letras', style: TextStyle(
          letterSpacing: 4,
          fontSize: 30
        )),
        Text('texto largo', style: TextStyle(
          fontSize: 25,

        ), maxLines: 1,overflow: TextOverflow.ellipsis,),
        Spacer()
      ],
    );
  }
}