void main(){
  
  emitNumbers().listen((value){
    print('Stream value: $value');
  });
}

Stream emitNumbers<int>(){
  
  return Stream.periodic(const Duration(seconds:1), (value){
   // print('Desde periodic $value');
    return value;
  }).take(5); 
  
}
