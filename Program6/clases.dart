void main(){
  //final wolverine = new hero('logan','Regeneracion');
  //final hero wolverine = hero('logan','Regeneracion'); //NO ES NECESARIO USAR EL NEW
final hero wolverine = hero(name: 'Logan',power: 'regeneration');
  print(wolverine.toString());
  print(wolverine.name);
  print(wolverine.power);
}

class hero{
  String name;
  String power;


//Primera forma de ingresar datos al objeto
//  hero(String pName, String pPower) //En este caso es un constrctor sencillo de definir de esta maanera sin uno de llaves solo el :
//    : name =pName,
//      power= pPower;


//SEGUNDA FORMA DE INGRESAR DATOS A LA CLASE

//hero(this.name,this.power);

hero({
  required this.name,
  this.power='sin poder'
});


    //Para almacenar estos datos tienen que estar entre llaves
    //{name=pName; //Para almacenar un valor sobre el objeto
    //this.power=pPower;} // Almacenar otro valor al mismo objeto
  @override// es necesario para spbreescribir informacion NO ES OBLIGATORIO
  String toString(){
    return '$name - $power'; //una forma de contener la informacion de la clase para ser mostrada 
  }
}

