import 'package:flutter/material.dart';

class App extends StatefulWidget {
  AppState createState() {
    return AppState();
  }
}

class AppState extends State<App> {
  int _counter = 0;

  void fetchImage() {
    
  }

  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Text('$_counter'),
        appBar: AppBar(
          title: Text('Lets see some images!'),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () { 
            setState(() {
              _counter += 1;
            });
          },
        ),
      ),
    );
  }

  int getCounter() => _counter;
}
