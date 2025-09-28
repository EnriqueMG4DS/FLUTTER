import 'package:flutter/material.dart';
class MassageFieldBox extends StatelessWidget {

final ValueChanged<String> onValue;

  const MassageFieldBox({
    super.key,
    required this.onValue
    });

  @override
  Widget build(BuildContext context) {
    final textControlle= TextEditingController();
    final focusNode = FocusNode();
    //final colors= Theme.of(context).colorScheme;

    final outlineInputBorder= UnderlineInputBorder(
      borderSide: const BorderSide(color: Colors.transparent),
      borderRadius: BorderRadius.circular(40)
    );

    final inputDecoration= InputDecoration(
      hintText: 'End your massage with a "?"', //Mensaje previo en la caja de texto
        enabledBorder: outlineInputBorder,
        focusedBorder: outlineInputBorder,
        filled: true, //Rellena el contenido de color de la caja de texto
        //En el siguiente codigo su unica fucnion es MOSTRAR UN ICONO
        //suffixIcon: const Icon(Icons.send_outlined) //Muestra un icono que posiblemente se pueda usar como boton p
        suffixIcon: IconButton( //Con este widget de caja de texto si se puede aderir la funcion de boton
          icon: Icon(Icons.send_outlined),
          onPressed: (){
            final textValue= textControlle.value.text; //Almacena su valor en una variable y lo convierte un elemento de tipo texto
            //print('button: $textValue'); //evento al presionar el boton
              onValue(textValue); //Carga el valor en la variable
            textControlle.clear();
          },
        )
      );

    return TextFormField(
      onTapOutside:(event) {
        focusNode.unfocus(); //Al clikear fuera del widget deja de ser seleccionado el widgt anterior 
      } ,
      focusNode: focusNode,
      controller: textControlle,
      decoration: inputDecoration,
      onFieldSubmitted: (value) { //reacciona al ser precionado 
        print('Sumit value $value'); //guarda la cadena completa
        onValue(value);
        textControlle.clear();//Limpia la bandeja al dar enter
        focusNode.requestFocus(); //su fucion es mantenerse clicqueado en este caso se mantiene sobre la caja de texto
      },

      //NO TIENE UNA FUNCIONALIDAD CLARA EN ESTE PUNTO MAS QUE MOSTRAR LO ULTIMO QUE SE PRECIONO
      /*onChanged:(value) {
        print('changed: $value'); //almacena los valores
      },*/
    ); // es una caja de texto

  }
}