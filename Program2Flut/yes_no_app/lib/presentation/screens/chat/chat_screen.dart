import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yes_no_app/domain/entities/message.dart';
import 'package:yes_no_app/presentation/providers/chat_provider.dart';
import 'package:yes_no_app/presentation/widgets/chat/her_massage_bubble.dart';
import 'package:yes_no_app/presentation/widgets/chat/my_massage_boubble.dart';
import 'package:yes_no_app/presentation/widgets/shared/massage_field_box.dart';

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
            //Formas de guardar una imagen
            backgroundImage: NetworkImage('https://64.media.tumblr.com/490ad7da5be4ae505a85474fa47395cf/91720597947c06c8-88/s500x750/1093c7b9fbc7bd5e5f99089bf3993f93e81ed0c8.pnj'),
          ),
        ),//El leading maneja un apartado para igresar algun logotipo
        title: Text('Hola mundo'),
        centerTitle: false, //ajusta el centrado de texto
      ),
      body: 
      _ChatView(),

    ); 
  }
}

class _ChatView extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {

    final chatProvider= context.watch<ChatProvider>(); // Para darle una fijacion de que este pendiente de los cambios

    return SafeArea( //Se extrae el widgwt para respetar la barra de gestos de un dispositivo tactil
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                controller: chatProvider.chatScrollController,
                itemCount: chatProvider.messageList.length, // Limita el espacio asignado del body en este caso
                itemBuilder: (context, index) {
                  final message = chatProvider.messageList[index];
                  return(message.fromWho== FromWho.hers)
                    ? HerMessageBubble()
                    : MyMassageBoubble(message: message);

                  //return Text('Indice: $index');
              },), //BUILDER es una herramienta de widgets en contsante cambio es mas interactiva
            ),
            
            //CAJAS DE TEXTO DE MENSAJES
            MassageFieldBox(
              onValue:(value) => chatProvider.sendMessage(value),// al ser llamado manda directamente lo ingresado en la caja de texto a la lista de los mensajes
              //onValue: chatProvider.sendMessage, // una forma mas corta de almacenar los datos
            ),
            //Text('Mundo')
          ],
        ),
      ),
    ); 
  }
}

