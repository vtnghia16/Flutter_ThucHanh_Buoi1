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
  bool _isPrime = false;
  final _numberController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          const SizedBox(
            height: 30,
          ),
          TextField(
            controller: _numberController,
            decoration: const InputDecoration(
                border: OutlineInputBorder(), label: Text('Nhap So Nguyen')),
          ),
          ElevatedButton(
            onPressed: () {
              _checkPrime();
            },
            child: const Text('Kiem Tra'),
          ),
        ]),
      ),
    );
  }

  void _checkPrime() {
    int number = int.tryParse(_numberController.text) ?? 0;
    _isPrime = isPrime(number);
    _showResultDialog(_isPrime);
  }

  bool isPrime(int number) {
    if (number <= 1) {
      return false;
    }

    if (number == 2) {
      return true;
    }

    if (number % 2 == 0) {
      return false;
    }

    for (int i = 3; i * i <= number; i += 2) {
      if (number % i == 0) {
        return false;
      }
    }

    return true;
  }

  void _showResultDialog(bool isPrime) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Kết quả'),
          content: Text(isPrime
              ? 'Số này là số nguyên tố.'
              : 'Số này không phải là số nguyên tố.'),
          actions: [
            ElevatedButton(
              child: const Text('Đóng'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
