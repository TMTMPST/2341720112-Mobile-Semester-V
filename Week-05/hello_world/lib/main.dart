import 'package:flutter/material.dart';
// import 'package:hello_world/basic_widgets/fab_widget.dart';
// import 'package:hello_world/basic_widgets/text_widget.dart';
// import 'package:hello_world/basic_widgets/image_widget.dart';
import 'package:hello_world/basic_widgets/loading_cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Contoh TextField")),
        body: const TextField(
          obscureText: false,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Nama',
          ),
        ),
      ),
    );
  }
}


