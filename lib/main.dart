import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(title: "Contador", home: Home()));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _count = 0;
  String _countInfo = 'Estamos zerados';

  void _changeCounter(int num) {
    setState(() {
      _count += num;
    });

    if (_count == 0) {
      _countInfo = "Estamos zerados!";
    } else if (_count < 0) {
      _countInfo = "Ficamos negativo.";
    } else {
      _countInfo = "Continue a contar...";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Image.asset(
            "images/original.jpg",
            fit: BoxFit.cover,
            height: 1000.0,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "$_count",
                style:
                    TextStyle(color: Colors.black, fontSize: 90.0, fontWeight: FontWeight.bold),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: FlatButton(
                      child: Text(
                        "-1",
                        style: TextStyle(fontSize: 40.0, color: Colors.black),
                      ),
                      onPressed: () {
                        _changeCounter(-1);
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: FlatButton(
                      child: Text(
                        "+1",
                        style: TextStyle(color: Colors.black, fontSize: 40.0),
                      ),
                      onPressed: () {
                        _changeCounter(1);
                      },
                    ),
                  ),
                ],
              ),
              Text(_countInfo,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25.0,
                      fontStyle: FontStyle.italic))
            ],
          )
        ],
      ),
    );
  }
}
