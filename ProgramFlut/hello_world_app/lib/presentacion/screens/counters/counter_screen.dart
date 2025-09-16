import 'package:flutter/material.dart'; 
class CounterScreen extends StatefulWidget { //StatelessWidget es para funciones fijas y no dinamicas

  
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}







class _CounterScreenState extends State<CounterScreen> {
  int clickCounter = 0;

  @override // SE GENERA UN CONTENEDOR BACIO 
  Widget build(BuildContext context) {
    return Scaffold(// el Scaffols se usa para para centralizar pantallas como la funcion DIV en HTML
        appBar: AppBar(
          title: const Text('Couner Screen'),
        ),
        body: //Center(child: Text('Counter Screen')),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center, // Se centra son este comando
              children: [
                Text('$clickCounter', style: const TextStyle(fontSize: 160, fontWeight: FontWeight.w100)),
                const Text('Clicks',style:TextStyle(fontSize: 25))
              ],
            ),
            
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {

              
              setState(() {
                clickCounter ++;
              });
              
            }, 
            child: const Icon(Icons.plus_one),
          )
    );
  }
}