import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Widgets Playground',
      home: Scaffold(
        appBar: AppBar(title: const Text('Widgets Playground')),
        body: const Center(
          // TODO: Replace this with your own widgets for the exercise.
          child: Text('TODO: Add your stateless and stateful widgets here!'),
        ),
      ),
    );
  }
}

