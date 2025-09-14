void main(){
  emitNumbers().listen((int value){ // Esta funcion funciona a base de la petición listen almacenando los valores de retorno sobre value
    
    print('String value: $value');
  });
}

Stream<int> emitNumbers() async*{
  final valuesToEmit=[1,2,3,4];
  for(int i in valuesToEmit){
    await Future.delayed(const Duration(seconds: 1));
    yield i; // Funciona como un return pero al ser una iteración por petición funciona de esta manera 
  }
}