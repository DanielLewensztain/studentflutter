import 'dart:convert';
import 'package:parcial2daniel/frase.dart';
import 'package:http/http.dart' as http;

class ApiServices {
  final String url = "https://allugofrases.herokuapp.com/frases/random";

  //GET STUDENTS
  Future<List<frase>> getfrase() async {
    final response = await http.get(
      url,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
    );

    if (response.statusCode == 200) {
      List jsonResponse = json.decode(response.body);
      return jsonResponse.map((job) => new frase.fromJson(job)).toList();
    } else
      throw Exception('Failed to load students from API');
  }
}
