import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _positive = 0;
  int _negative = 0;

  void _incrementNumbers() {
    setState(() {
      _positive++;
    });
  }

  void _decreaseNumbers() {
    setState(() {
      _negative--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(239, 176, 137, 199),
        leading: IconButton(
          icon: const Icon(Icons.settings),
          onPressed: () {},
        ),
        title: Text(widget.title),
        actions: [
          IconButton(
            icon: const Icon(Icons.arrow_downward),
            onPressed: _decreaseNumbers,
          )
        ],
      ),
      body: Center(
        child: Center(
          child: Container(
            margin: const EdgeInsets.all(25),
            child: Column(
            children: <Widget>[
              Card(
                elevation: 50,
                shape: const StadiumBorder(
                  side: BorderSide(
                    color: Color.fromARGB(255, 88, 5, 82),
                    width: 3,
                  ),
                  //<-- SEE HERE
                ),
                child: Container(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: <Widget>[
                      const Text('Current positive numbers',
                          style:  TextStyle(
                            fontWeight: FontWeight.bold,
                          )),
                      Text(
                        '$_positive',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Color.fromARGB(255, 196, 12, 196),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                elevation: 50,
                shape: const StadiumBorder(
                  side: BorderSide(
                    color: Color.fromARGB(255, 88, 5, 82),
                    width: 3,
                  ),
                  //<-- SEE HERE
                ),
                child: Container(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: <Widget>[
                      const Text('Current negative numbers',
                       style:  TextStyle(
                            fontWeight: FontWeight.bold,
                          )),
                      Text(
                        '$_negative',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Color.fromARGB(255, 196, 12, 196),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          )
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromARGB(239, 176, 137, 199),
        onPressed: _incrementNumbers,
        tooltip: 'Increment Fuel Price',
        child: const Icon(Icons.arrow_upward ),
      ),
    );
  }
}
