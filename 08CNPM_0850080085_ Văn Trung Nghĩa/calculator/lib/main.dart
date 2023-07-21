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
  num? result;
  final number1controller = TextEditingController();
  final number2controller = TextEditingController();

  void add() {
    setState(() {
      result =
          int.parse(number1controller.text) + int.parse(number2controller.text);
    });
  }

  void tru() {
    setState(() {
      result =
          int.parse(number1controller.text) - int.parse(number2controller.text);
    });
  }

  void nhan() {
    setState(() {
      result =
          int.parse(number1controller.text) * int.parse(number2controller.text);
    });
  }

  void chia() {
    setState(() {
      result =
          int.parse(number1controller.text) / int.parse(number2controller.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.network(
              'https://cdn-icons-png.flaticon.com/512/2819/2819726.png',
              width: 120
            ),
            TextField(
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), label: Text('Nhap So A')),
              controller: number1controller,
            ),
            TextField(
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), label: Text('Nhap So B')),
              controller: number2controller,
            ),
            Text("Ket Qua :$result"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    add();
                  },
                  style:
                  ElevatedButton.styleFrom(backgroundColor: Colors.green),
                  child: const Text("+"),
                ),
                ElevatedButton(
                  onPressed: () {
                    tru();
                  },
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                  child: const Text("-"),
                ),
                ElevatedButton(
                  onPressed: () {
                    nhan();
                  },
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                  child: const Text("x"),
                ),
                ElevatedButton(
                  onPressed: () {
                    chia();
                  },
                  style:
                  ElevatedButton.styleFrom(backgroundColor: Colors.amber),
                  child: const Text(":"),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                number1controller.text = '';
                number2controller.text = '';
                result = 0;
              },
              child: const Text("Clear"),
            ),
          ],
        ),
      ),
    );
  }
}
