import 'package:flutter/material.dart';
class MyMassageBoubble extends StatelessWidget {
  const MyMassageBoubble({super.key});

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
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text('Labore irure laborum ', style: TextStyle(color: Colors.white),),
          ),
        ),
        const SizedBox(height: 10,)
      ],
    );
  }
}