import 'package:flutter/material.dart';
import './second_page.dart';

void main() => runApp(const FlutterApp());

class FlutterApp extends StatelessWidget {
  const FlutterApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => MyHome(),
        '/second': (context) => const SecondPage(),
      },
    );
  }
}

class MyHome extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //automaticallyImplyLeading: false,
        title: const Text('First Route'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Go to 2nd route'),
          onPressed: () {
            Navigator.pushNamed(
              context,
              '/second',
            );
          },
        ),
      ),
    );
  }
}
