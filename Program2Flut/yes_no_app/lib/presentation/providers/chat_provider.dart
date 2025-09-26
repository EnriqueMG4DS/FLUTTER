import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier{

  final ScrollController chatScrollController =ScrollController();

  List<Message> messageList=[
    Message(text: 'Hola juan', fromWho: FromWho.me),
    Message(text: 'Ya regresaste del trabajo', fromWho: FromWho.me),
  ];

  Future <void> sendMessage(String text) async {
    if(text.isEmpty) return; // si el contenido de esta variable esta vacia, no guardes elementos
    final newMessage = Message(text: text, fromWho: FromWho.me); //Variable de carga de informacion
    messageList.add(newMessage); // es implementada a la dista "LA LISTA ES DINAMICA"
  
    notifyListeners(); //REFERSCA LA PANTALLA POR UN CAMBBIO DETECTADO
    moveScrollToButton();
  }


  Future <void> moveScrollToButton() async{

    await Future.delayed(const Duration(milliseconds: 100));// solo es un retardo en la funcion 
    chatScrollController.animateTo(
    chatScrollController.position.maxScrollExtent, //Aqui direcciona al scroll al final del contenido que se a cargado hasta ese momento 
    duration: const Duration(milliseconds: 300),//duracion de efecto
    curve: Curves.easeOut //efecto al llegar al final 
    );
  }
}
