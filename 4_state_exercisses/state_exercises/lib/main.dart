import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class CounterGame extends StatefulWidget {
  const CounterGame({super.key});

  @override
  State<CounterGame> createState() => _CounterGameState();
}

class _CounterGameState extends State<CounterGame> {
  // First counter variable
  // Second counter variable

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // TODO: Add a button (e.g., ElevatedButton or IconButton)
        // TODO: Display a counter or like icon that updates when pressed
        SizedBox(height: 16),
        // TODO: Add a reset button to set the counter back to zero
        SizedBox(height: 32),
        // TODO: Add a second counter and track both independently
        SizedBox(height: 16),
        // TODO: Show a message when a certain number is reached (e.g., “You reached 10 likes!”)
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