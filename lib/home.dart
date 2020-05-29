import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String title = 'Counter';

  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  void _resetCounter() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Container(
          height: 200.0,
          width: 200.0,
          padding: EdgeInsets.only(top: 50.0),
          decoration: BoxDecoration(
            border: Border.all(
              color: Color(0xFFC41A3B),
              width: 5.0,
            ),
            borderRadius: BorderRadius.circular(100.0),
          ),
          child: Text(
            '$_counter',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 80.0, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              onPressed: _resetCounter,
              backgroundColor: Color(0xFFC41A3B),
              tooltip: 'Reset',
              heroTag: 'Reset',
              child: Icon(
                Icons.refresh,
                size: 28.0,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              onPressed: _decrementCounter,
              backgroundColor: Color(0xFFC41A3B),
              tooltip: 'Decrement',
              heroTag: 'Decrement',
              child: Icon(
                Icons.remove,
                size: 28.0,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              onPressed: _incrementCounter,
              backgroundColor: Color(0xFFC41A3B),
              tooltip: 'Increment',
              heroTag: 'Increment',
              child: Icon(
                Icons.add,
                size: 28.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
