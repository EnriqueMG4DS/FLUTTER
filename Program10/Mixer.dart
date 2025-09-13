abstract class Animal{

}

abstract class Mamifero extends Animal{

}

abstract class Ave extends Animal{

}

abstract class Pez extends Animal{

}

mixin class Volador{
  void volar()=>print('Puedo volar');
}
mixin class Caminante{
  void caminar()=>print('Puedo caminar');
}
mixin class  Nadador{
  void nadar()=>print('Puedo nadar');
}
// MAMIFEROS
class Delphin extends Mamifero with Nadador{

}
class Murcielago extends Mamifero with Volador, Caminante{
  
}
class Gato extends Mamifero with Caminante{
  
}

// AVES 
class Paloma extends Ave with Volador, Caminante{
  
}
class Pato extends Ave with Volador, Caminante, Nadador{
  
}

//PEZ
class Tiburon extends Pez with Nadador{
  
}
class PezVoldor extends Pez with Nadador, Volador{
  
}


void main(){
  final flipper = Delphin();
  flipper.nadar();
  final batman = Murcielago();
  batman.caminar();
  batman.volar();
  
  final namor = Pato();
  namor.caminar();
  namor.nadar();
  namor.volar();
}