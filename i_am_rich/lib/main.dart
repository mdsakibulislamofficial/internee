import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          centerTitle: true,
          title: const Text('I Am Rich'),
          backgroundColor: Colors.blueGrey.shade900,
        ),
        body: const Center(
          child: Image(
            image: AssetImage(
              'assets/diamond.png',
            ),
          ),
        ),
      ),
    );
  }
}
