void main(){
  final mySquare= square(side: 10); //Se declara el objeto en base a la clase

  //mySquare.side=5; // Se le puede dar otro valor a la variable de la clase 
print('el area es: ${mySquare.calcularArea()}'); // orden el objeto creado y su funcion correspondiente 
}

class square{
  //PARA CONVERTIR UNA VARIABLE DE TIPO PRIVADA SE TIENE QUE USAR BARRA BAJA AL INICIALIZAR LA VARIBALE 
  double _side; //side * side DECLARACION DE VARIBALES DE LA CLASE 

  square({required double side}): //Constructor de ingreso de datos
  assert (side>=0,'Side must be >=0'), //FUNCIONA COMO CORTES PARA EVITAR FUTUROS ERRORES POR SIGNOS O PROXIMAMENTE POR CARACTERES
  _side=side; // se le asigan un valor a la variable de tipo privada 

  double get area{
    return _side * _side;
  }

  set side(double value){
    print('seeting new value $value');
    if(value<0) throw 'Value must be >=0'; // el throw finaliza el proceso si no se cumple la funcion del IF

  _side=value;
  }

  double calcularArea(){ //funcion solo disponible en elementos de la misma clase
    return _side * _side;
  }
}