void main() async { //las funciones asicronas solo funcionan si se usa el async
  
  print('Inicio del programa');
  
  try{
    final value = await httpGet('http>Sdsds');
    print('exito: $value');
  }on Exception catch(err){
    print('Tenemos una exepcion: $err');
  }
  catch(err){
    print('OOPS!! algo terrible paso: $err');
  }finally{
    print('Fin del try y catch');
  }
  
  
  print('Fin del programa');
}

Future<String> httpGet(String url)async{ //al usar async se fuerza la funcion a que espere un future
  
  await Future.delayed(const Duration(seconds: 1));
  
  throw Exception('No hay parametros en el URL');
  
  //throw 'Error a la peticion';
  //return 'Tenemos un valor de la petición';
}