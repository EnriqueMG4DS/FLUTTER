import 'package:flutter/material.dart';
class HerMessageBubble extends StatelessWidget {
  const HerMessageBubble({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,//para alineacion del contenido de este widget
      children: [

        Container(
          
          decoration: BoxDecoration(
            color: colors.secondary,
            borderRadius: BorderRadius.circular(20) //Forma redondeada del contenido

          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text('Hola Mundo ', style: TextStyle(color: Colors.white),),
          ),
        ),
        const SizedBox(height: 5,),
        _ImageBubble(),
        const SizedBox(height: 10,)
        //todo: imagen
      ],
    );
  }
}

class _ImageBubble extends StatefulWidget {
  

  @override
  State<_ImageBubble> createState() => __ImageBubbleState();
}

class __ImageBubbleState extends State<_ImageBubble> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size; //Almacena las dimenciones exactas de un dispositivo
    print(size);//Encontramos las dimenciones de un dispositivo desde la terminal
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.network('https://yesno.wtf/assets/yes/9-6403270cf95723ae4664274db51f1fd4.gif',
      width: size.width* .7,//especifica un tamano de imagen al mostrarse
      height: 150,
      fit: BoxFit.cover,
      )
      );
  }
}