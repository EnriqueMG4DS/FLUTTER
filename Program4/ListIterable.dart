void main(){

final numbers=[1,2,3,4,5,5,5,6,7,8,9,9,10];

print('List original $numbers'); //Funciona para mostrar en pantalla el listado
print('Length ${numbers.length}'); //Se pueden aplicar funciones sobre la variable, como en este ejemplo que muestra el tamano de la lista
print('Index en la ubicacion 1: ${numbers[1]}'); //formas de acceder a la informacion de la lista
print('Index en la primera ubicacion: ${numbers.first}'); // Primer elemento de la lista
print('index en la ultima ubicaion: ${numbers.last}'); // forma de mostara el ultimo elemento de la lista
print('reversed: ${numbers.reversed}'); //esta funcion invierte el sentido de la lsita

final reversedNumber= numbers.reversed;

print('Iterables: $reversedNumber');
print('list: ${reversedNumber.toList()}'); // revierte el iterable a listado
// AL USAR SET ELIMINA LOS DATOS REPETIDO DE UN "ITERABLE"
print('set: ${reversedNumber.toSet()}'); // se convierte tambien a un elemento tipo set 

final numberGreatThan5 = numbers.where((num){
  return num > 5; //nos permiti estandarizar un margen de numeros a almacenar 
});

print('Elemntos dentro de la lista mayores a 5: $numberGreatThan5');
print('Elemntos dentro de la lista mayores a 5: ${numberGreatThan5.toSet()}'); //descarta elementos repetidos
}