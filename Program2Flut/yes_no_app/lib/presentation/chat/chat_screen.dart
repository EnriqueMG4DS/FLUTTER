import 'package:flutter/material.dart';

//statelessW genera el widget de una forma mas optimizada

class ChatScreen extends StatelessWidget {
  
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(// el Scaffold es un Widwet estructura de una ventana
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(5.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage('https://64.media.tumblr.com/490ad7da5be4ae505a85474fa47395cf/91720597947c06c8-88/s500x750/1093c7b9fbc7bd5e5f99089bf3993f93e81ed0c8.pnj'),
          ),
        ),//El leading maneja un apartado para igresar algun logotipo
        title: Text('Hola mundo'),
        centerTitle: false, //ajusta el centrado de texto
      ),

    ); 
  }
}