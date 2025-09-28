//Propiedas de la respuesta de una api
class YesNoModel {
  String answer;
  bool forced;
  String image;

  YesNoModel({ //CONSTRUCTOR
    required this.answer,
    required this.forced,
    required this.image
  });

  factory YesNoModel.fromJsonMap(Map<String,dynamic> json)=> 
  YesNoModel(
    answer: json['answer'], 
    forced: json['forced'], 
    image: json['image']
    );
}