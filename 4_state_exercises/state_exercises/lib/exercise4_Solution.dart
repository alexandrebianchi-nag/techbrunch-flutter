import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class CounterGame extends StatefulWidget {
  const CounterGame({super.key});

  @override
  State<CounterGame> createState() => _CounterGameState();
}

class _CounterGameState extends State<CounterGame> {
  int _counter=0; // First counter variable
  String _textFieldVallue=''; // Variable to hold the text field value

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // TODO: Add a button (e.g., ElevatedButton or IconButton)
        ElevatedButton(
          onPressed: () {
            setState(() {
              _counter++;
            });
          },
          child: const Text('Press Me'),
        ),
        // TODO: Display a counter or like icon that updates when pressed
        SizedBox(height: 16),
        Text('Counter: $_counter', style: TextStyle(fontSize: 24)),
        // TODO: Add a reset button to set the counter back to zero
        SizedBox(height: 32),
        ElevatedButton(
          onPressed: () {
            setState(() {
              _counter = 0;
            });
          },
          child: const Text('Reset Counter'),
        ),
        // TODO: Show a message when a certain number is reached (e.g., “You reached 10 likes!”)
        SizedBox(height: 16),
        if (_counter >= 10)
          Text('You reached 10 likes!', style: TextStyle(fontSize: 20, color: Colors.blue)),
        // TODO: Add a live-updating text field
        SizedBox(height: 32),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0),
          child: TextField(
            decoration: InputDecoration(labelText: 'Type something'),
            onChanged: (value) {
              setState(() {
                _textFieldVallue = value;
              });
            },
          ),
        ),
        SizedBox(height: 16),
        Text('You typed: $_textFieldVallue', style: TextStyle(fontSize: 18)),
        // BONUS: Animate the button or counter when pressed
      ],
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'State Mini-Game',
      home: Scaffold(
        appBar: AppBar(title: const Text('State Mini-Game')),
        body: const Center(
          child: CounterGame(),
        ),
      ),
    );
  }
}