// ignore: camel_case_types
class frase {
  int fraseid;

  String texto;

  frase({
    this.fraseid,
    this.texto,
  });

  frase.newfrase(int id, String last, String first, DateTime enrollment) {
    this.fraseid = id;
    this.texto = first;
  }

  factory frase.fromJson(Map<dynamic, dynamic> json) {
    return frase(
      fraseid: json['StudentId'] as int,
      texto: json['FirstName'] as String,
    );
  }
}
