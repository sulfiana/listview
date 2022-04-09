import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  List<Widget> widgets = [];

  _MyAppState() {
    for (int i = 0; i < 20; i++) {
      widgets.add(Text(
        "Data Ke-" + i.toString(),
        style: const TextStyle(fontSize: 35),
      ));
    }
  }
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Sulpiana"),
        ),
        body: ListView(
          children: widgets,
        ),
      ),
    );
  }
}
