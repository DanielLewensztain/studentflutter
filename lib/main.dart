import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  const App({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Parcial 2",
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  get backgroundcolor => null;

  @override
  Widget build(BuildContext context) {
    var scaffold = Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "FRASES-DANIEL",
          style: TextStyle(color: Colors.white),
        ),
      ),
      backgroundColor: Colors.cyan,
      body: ListView(
        children: [
          Container(
            child: Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS5sCkU8ALHKhm6degMOG-Wkd4jb7cO-PSvMw&usqp=CAU"),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: Text("Frase Celebre"),
        onPressed: null,
      ),
    );
    return scaffold;
  }
}
