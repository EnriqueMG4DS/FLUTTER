import 'package:flutter/material.dart';
import 'package:yes_no_app/config/helpers/get_yes_no_answer.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier{

  final ScrollController chatScrollController =ScrollController();
  final GetYesNoAnswer getYesNoAnswer= GetYesNoAnswer();

  List<Message> messageList=[
    Message(text: 'Hola jualia', fromWho: FromWho.me, imageURL: null),
    Message(text: 'Ya regresaste del trabajo?', fromWho: FromWho.me, imageURL: null),
  ];

  Future <void> sendMessage(String text) async {
    if(text.isEmpty) return; // si el contenido de esta variable esta vacia, no guardes elementos
    final newMessage = Message(text: text, fromWho: FromWho.me, imageURL: null); //Variable de carga de informacion
    messageList.add(newMessage); // es implementada a la dista "LA LISTA ES DINAMICA"

    if(text.endsWith('?')){// Si el ultimo caracter del mensaje es igual a,
      await herReply();
    }

    notifyListeners(); //REFERSCA LA PANTALLA POR UN CAMBBIO DETECTADO
    moveScrollToButton();
  }

Future<void> herReply() async{
  final herMassage= await getYesNoAnswer.getAnswer();
  messageList.add(herMassage);
  notifyListeners();
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
