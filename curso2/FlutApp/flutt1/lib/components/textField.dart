import 'package:flutter/material.dart';

class Textfield extends StatelessWidget {
  const Textfield({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(
          height: 60,
        ),
        TextField(),
        SizedBox(
          height: 40,
        ),
        TextField(),
        SizedBox(
          height: 40,
        ),
        TextField(
          decoration: InputDecoration(
            hintText: 'Escribe algo aqui'
          ),
        ),
        SizedBox(
          height: 40,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Escribe algo aqui pero con bordes',
              border: OutlineInputBorder()
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Escribe algo aqui pero con bordes mas icono',
              prefixIcon: Icon(Icons.search),
              border: OutlineInputBorder()
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            obscureText: true, //Vuelve invicible los caracteres
            decoration: InputDecoration(
              hintText: 'Escribe tu contrasena',
              prefixIcon: Icon(Icons.search),
              border: OutlineInputBorder()
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            maxLines: 3, //minimo de espacios a usar
            maxLength: 55,// maximo de caracteres
            decoration: InputDecoration(
              hintText: 'Escribe tu comentario',
              prefixIcon: Icon(Icons.search),
              border: OutlineInputBorder()
            ),
          ),
        )
      ],
    );
  }
}