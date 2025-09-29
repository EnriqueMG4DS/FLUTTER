import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/message.dart';
class HerMessageBubble extends StatelessWidget {
final Message message; 

  const HerMessageBubble({
    super.key,
    required this.message,
    });
  
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
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(message.text, style: TextStyle(color: Colors.white),),
          ),
        ),
        const SizedBox(height: 5,),
        _ImageBubble(message.imageURL!),
        const SizedBox(height: 10,)
        //todo: imagen
      ],
    );
  }
}

class _ImageBubble extends StatelessWidget {
  
  final String imageURL;
  

  const _ImageBubble(this.imageURL);

  

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size; //Almacena las dimenciones exactas de un dispositivo
    print(size);//Encontramos las dimenciones de un dispositivo desde la terminal
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.network(imageURL,
      width: size.width* .7,//especifica un tamano de imagen al mostrarse
      height: 150,
      fit: BoxFit.cover,
      loadingBuilder: (context, child, loadingProgress) {
        if(loadingProgress==null)return child;
        return Container(
          width: size.width * 0.7,
          height: 150,
          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
          child: const Text('Esta mandando una imagen'),
        );
      },
      )
      );
  }
}