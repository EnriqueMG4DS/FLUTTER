
enum  plantType{nuclear, wind, water} // se definen los tipos de entradas

abstract class EnergyPlant{

  double enrgyLeft; //los es una unidad de consumo para una futura funcion 
  final plantType type; // nuclear, wind, water

  EnergyPlant({// esto se requiere para de cierto modo inicializar las variables
    required this.enrgyLeft,
    required this.type 
  });

  void ConsumeEnergy(double amount);
  //{
  //  throw UnimplementedError();
  //}
}

// extends o implements
class windPlant extends EnergyPlant{ //forma de eredar una clase

  windPlant({required double initialEnergy})
  : super(enrgyLeft: initialEnergy, type: plantType.wind);

  @override
  void ConsumeEnergy(double amount){
    enrgyLeft-=amount;
  }
}

void main(){
  final windPlantt = windPlant(initialEnergy:100); //checar que las variables no choquen entre si
  final nuclearPlant= NuclearPlant(enrgyLeft: 1000);

  print(windPlantt);

  print('wind:${charcheFound(windPlantt)}');
  print('Nuclear: ${charcheFound(nuclearPlant)}');
}

double charcheFound(EnergyPlant plant){
  if(plant.enrgyLeft<10){
    throw Exception('No enough energy');
  }
  return plant.enrgyLeft-10;
}

class NuclearPlant implements EnergyPlant{
  @override
  double enrgyLeft;
  @override
  final plantType type = plantType.nuclear;
  
  NuclearPlant({
    required this.enrgyLeft
  });
  @override
  void ConsumeEnergy(double amount){
    enrgyLeft-=(amount*.5);
  }
}