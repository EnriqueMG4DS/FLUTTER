void main(){

 final String pokemon = 'dito';
 final int hp = 100;
 final bool isAlive = true;
 //bool? isAlivee; //puede tener hasta 3 estados NULL, TRUE, FALSE
 final abilities= <String>['impostor']; //Al usar los <> puedes definir el tipo de dato del contenido
 final List<String> Sprites=['ditto/front.png','dito/back.png']; // el caso anterior es para declarar una lista pero tambien en esta linea se define otra forma de declararlo junto a su tipo de dato

    //dynamic permite usar elementos de caracter nulos puede adquirir cualquier valor

  dynamic errorMessage='hola'; //por ejemplo puede aquirir un valor de tipo string
  errorMessage = true; //un valor booleano sobre la misma variable
  errorMessage = [1,2,3,4,5]; //un listado 
  errorMessage = {1,2,3,4,5};; //un set de datos 
  errorMessage = () => true; //puede ser un valor que retorna alguna funcion 
  errorMessage = null; //o directamente un valor nulo 

  // errorMessage +=1; en este caso es una funcion no permitida 

 print(""" //el contenido entre 3 comillas dobles se define que espera solo variables

$pokemon
$hp
$isAlive
$abilities
$Sprites
$errorMessage

""");

}