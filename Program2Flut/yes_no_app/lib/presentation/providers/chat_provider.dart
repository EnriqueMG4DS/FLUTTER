import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier{

  List<Message> messageList=[
    Message(text: 'Hola juan', fromWho: FromWho.me),
    Message(text: 'Ya regresaste del trabajo', fromWho: FromWho.me),
  ];

  Future <void> sendMessage(String text) async {
    
    final newMessage = Message(text: text, fromWho: FromWho.me); //Variable de carga de informacion
    messageList.add(newMessage); // es implementada a la dista "LA LISTA ES DINAMICA"
  
    notifyListeners(); //REFERSCA LA PANTALLA POR UN CAMBBIO DETECTADO
  }

}
