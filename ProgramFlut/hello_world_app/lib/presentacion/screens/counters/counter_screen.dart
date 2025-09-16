import 'package:flutter/material.dart'; 
class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override // SE GENERA UN CONTENEDOR BACIO 
  Widget build(BuildContext context) {
    return Scaffold(// el Scaffols se usa para para centralizar pantallas como la funcion DIV en HTML
        body: //Center(child: Text('Counter Screen')),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center, // Se centra son este comando
              children: const [
                Text('10', style:TextStyle(fontSize: 160, fontWeight: FontWeight.w100)),
                Text('Clicks',style:TextStyle(fontSize: 25))
              ],
            ),
            
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              
            }, 
            child: const Icon(Icons.plus_one),
          )
    );
  }
}