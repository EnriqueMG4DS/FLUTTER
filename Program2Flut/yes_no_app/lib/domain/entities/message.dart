enum FromWho{me,hers}

class Message {
  final String text;
  final String? inageURL;
  final FromWho fromWho;

  Message({
    required this.text,
    this.inageURL,
    required this.fromWho, required imageURL
  });

}

