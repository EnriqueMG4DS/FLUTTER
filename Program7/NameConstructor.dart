void main(){

  final Map<String, dynamic> rawJson ={ //esta es la estructura al trabajar un tipo MAP 
    'name' : 'Spider Man',
    'power': 'Trepar paredes',
    'isAlive': true
  };

  final IronMan = hero.fromJson(rawJson);

  //final IronMan = hero(
  //  isAlive: false,
  //  power:'Dinero',
  //  name:'Tony Stark'
  //);

  print(IronMan);

}

class hero{
  String name;
  String power; //se definen las varibles de la clase
  bool isAlive;

  hero({
    required this.name,
    required this.power, //define una prioridad segun los elementos que se ingresen
    required this.isAlive
  });

  hero.fromJson (Map <String,dynamic> Json) 
  : name =Json['name'] ?? 'no name found',
  power = Json['power'] ?? 'no power found',
  isAlive =  Json['isAlive']??'no isAlive found';

  @override
  String toString(){
    return '$name, $power, Is alive: ${isAlive ? 'YES':'NOP'}';
  }
}