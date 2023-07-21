import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Trang chu',
      home: MyHomeScreen(),
    )
  );
}

class MyHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Trang chu'),
      ),
      body: SafeArea(
        child: Container(
            alignment: Alignment.center,
            width: 390,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Van Trung Nghia',
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.w900),
                ),
                SizedBox(
                  height: 20,
                ),
                buildRowLayout(),
                SizedBox(
                  height: 20,
                ),
                Image.network(
                  'https://upload.wikimedia.org/wikipedia/commons/1/17/Google-flutter-logo.png',
                  width: 150,
                ),

                ElevatedButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Nut da duoc bam!')));
                    },
                    child: Text('Bấm vào đây')),
              ],
            )),
      ),
    );
  }
}

Widget buildRowLayout() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        color: Colors.blue,
        height: 100,
        width: 100,
      ),
      Container(
        color: Colors.green,
        height: 100,
        width: 100,
      ),
      Container(
        color: Colors.orange,
        height: 100,
        width: 100,
      )
    ],
  );
}

