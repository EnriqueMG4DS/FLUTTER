import 'package:flutter/material.dart';
class MassageFieldBox extends StatelessWidget {
  const MassageFieldBox({super.key});

  @override
  Widget build(BuildContext context) {

    //final colors= Theme.of(context).colorScheme;

    final outlineInputBorder= UnderlineInputBorder(
      borderSide: const BorderSide(color: Colors.transparent),
      borderRadius: BorderRadius.circular(40)
    );

    final inputDecoration= InputDecoration(
        enabledBorder: outlineInputBorder,
        focusedBorder: outlineInputBorder,
        filled: true, //Rellena el contenido de color de la caja de texto
        //En el siguiente codigo su unica fucnion es MOSTRAR UN ICONO
        //suffixIcon: const Icon(Icons.send_outlined) //Muestra un icono que posiblemente se pueda usar como boton p
        suffixIcon: IconButton( //Con este widget de caja de texto si se puede aderir la funcion de boton
          icon: Icon(Icons.send_outlined),
          onPressed: (){
            print('valor de la caja de texto '); //evento al presionar el boton
          },
        )
      );

    return TextFormField(
      decoration: inputDecoration,
      onFieldSubmitted: (value) {
        print('Sumit value $value'); //guarda la cadena completa
      },
      onChanged:(value) {
        print('changed: $value'); //almacena los valores
      },
    ); // es una caja de texto

  }
}