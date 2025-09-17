import 'package:flutter/material.dart'; 
class CounterFunctionsScreen extends StatefulWidget { //StatelessWidget es para funciones fijas y no dinamicas

  
  const CounterFunctionsScreen({super.key});

  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}







class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {
  int clickCounter = 0;
  String clic='Clicks';
  @override // SE GENERA UN CONTENEDOR BACIO 
  Widget build(BuildContext context) {
    return Scaffold(// el Scaffols se usa para para centralizar pantallas como la funcion DIV en HTML
        appBar: AppBar(
          title: const Text('Couner Functions'),
          //leading: , lo mismo que action pero a la izquierda en cuestion del boton
          actions: [
            IconButton(
            onPressed: (){
                setState(() {
                  clickCounter=0;
                });
            },
             icon: const Icon(Icons.refresh_rounded)),
             
          ],
        ),
        body: //Center(child: Text('Counter Screen')),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center, // Se centra son este comando
              children: [
                Text('$clickCounter', style: const TextStyle(fontSize: 160, fontWeight: FontWeight.w100)),
                //Text(clic,style:TextStyle(fontSize: 25)),
                Text('click${clickCounter == 1? '':'s'}',style:TextStyle(fontSize: 25))// Otra forma de meter una condicional
              ],
            ),
            
          ),
          floatingActionButton: Column( // El column se utiliza para meter multiples widgets
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FloatingActionButton(
                shape: const StadiumBorder(), //Para redondear el boton en este caso
            onPressed: (
              
            ) {

              
              setState(() { //Refresh en el renderizado
                clickCounter =0;
                
              });
              //setState(() {}); //Esta es otra forma de renderizar sin meter una operacion dentro de
            }, 
            child: const Icon(Icons.refresh_outlined),
          ),
          const SizedBox(height: 10),
              FloatingActionButton(
                shape: const StadiumBorder(), //Para redondear el boton en este caso
            onPressed: () {

              
              setState(() { //Refresh en el renderizado
                clickCounter ++;
                
              });
              //setState(() {}); //Esta es otra forma de renderizar sin meter una operacion dentro de
            }, 
            child: const Icon(Icons.plus_one),
          ),

          const SizedBox(height: 10),

          FloatingActionButton(
            onPressed: () {

              
              setState(() { //Refresh en el renderizado
                clickCounter --;
                
              });
              //setState(() {}); //Esta es otra forma de renderizar sin meter una operacion dentro de
            }, 
            child: const Icon(Icons.exposure_minus_1),
          )
            ],
          )
    );
  }
}