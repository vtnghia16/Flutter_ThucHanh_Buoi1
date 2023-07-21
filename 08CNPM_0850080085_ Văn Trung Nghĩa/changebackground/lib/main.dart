// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final Color bachground1 = Colors.cyan;
  Color? bachgroundColor = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      backgroundColor: bachgroundColor,
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            changeColor();
          },
          child: const Text('Click me to change bachground color'),
        ),
      ),
    );
  }

  void changeColor() {
    if (bachgroundColor == Colors.white) {
      setState(() {
        bachgroundColor = bachground1;
      });
    } else {
      setState(() {
        bachgroundColor = Colors.white;
      });
    }
  }
}
