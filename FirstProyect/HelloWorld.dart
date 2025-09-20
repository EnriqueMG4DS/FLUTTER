void main() {
  //var myNanme = 'Enrique'; //no esta definida el valor de la variable hasta el final

  //String myNanme ='Enrique'; //Se define de tipo String Fprzosamente 

  //final myNanme = 'Enrique'; // Misma funcion que el var pero la variable se convierte de tipo constante 
  
  late final myNanme; //una funcion tardia "Solo se prepara la variable"

  myNanme= 'Enrique';
  //Interpolacion de Strings se refiere a convinar texto tanto escrito como el de una x variable
  print('Hola $myNanme');
  //Para agregar una funcion sobre una variable es necesario dejar la tupla entre corchetes
  print('hola ${myNanme.toUpperCase()}');
}