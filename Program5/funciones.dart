void main(){

print(greetEveryOne()); //de esta forma doemos llamar a un funcion que reporna un elemnto de tipo string

print(GreetEveryOne());// la forma de llamar una funcion sigue siendo la misma

print('Suma: ${addTwoNumbers(10, 20)}');

print('resta: ${AddTownNumber(20, 10)}');

print(greetPerson(name: 'kikee',message: 'holaaa' ));
}



String greetEveryOne(){ //ES RECOMENDABLE TIPAR LA FUNCION QUE ESTEMOS DECLARANDO
  return 'Hello every one';
}

String GreetEveryOne() => 'HELLO EVERYONE'; // esta es otra forma de declarar una funcion sencilla

int addTwoNumbers(int a,int b){ //para que la funcion pueda trabajar en este caso con solo enteros, es necesario definir los valores de entrada
  return a+b;
}

int AddTownNumber(int a,int b)=> a-b; // solo funciona para funciones sencillas

int addTwoNumbersOptional(int a,[int? b, int c=0]){ // con los [] se determina que su valor no es obligatorio

  b = b ?? 0; // en caso de ser nulo este pasa directamente el valor de 0
  return a + b ;

}
// AL USAR REQUIRED VULVE A SER UNA VARIABLE FORSOSA DE USARR PARA TRABAJAR SOBRE LA FUCNION
String greetPerson({ required name, String message='Hola'}){ // al trabajarlos entre llaves se vuelven variables opcionales 
  
  return '$message, $name';
}
