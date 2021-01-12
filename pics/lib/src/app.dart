import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' show get;
import 'models/image_dto.dart';
import 'widgets/image_list.dart';

class App extends StatefulWidget {
  AppState createState() {
    return AppState();
  }
}

class AppState extends State<App> {
  int _counter = 1;
  List<ImageDto> images = [];

  void fetchImage() async {
    var response = await get('https://jsonplaceholder.typicode.com/photos/${_counter+1}');
    var image = ImageDto.fromJson(jsonDecode(response.body));

    setState(() {
      _counter++;
      images.add(image);
    });
  }

  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: ImageList(images),
        appBar: AppBar(
          title: Text('Lets see some images!'),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: fetchImage,
        ),
      ),
    );
  }

  int getCounter() => _counter;
}
