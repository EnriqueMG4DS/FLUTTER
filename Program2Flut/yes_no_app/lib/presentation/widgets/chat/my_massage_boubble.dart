import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/message.dart';
class MyMassageBoubble extends StatelessWidget {

  final Message message; //LLama elementos para ser pedidos en la funcion

  const MyMassageBoubble({ //elementos que se pueden cargar a la clase
    super.key,
    required this.message
    });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
   

    

    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,//para alineacion del contenido de este widget
      children: [

        Container(
          
          decoration: BoxDecoration(
            color: colors.primary,
            borderRadius: BorderRadius.circular(20) //Forma redondeada del contenido

          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              message.text, 
              style: const TextStyle(color: Colors.white),),
          ),
        ),
        const SizedBox(height: 10,)
      ],
    );
  }
}