import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation Adventure',
      home: const MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  // TODO: Add a TextEditingController to manage the text field input (Best practice to handle text fields)

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Main Screen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // TODO: Add a text field and pass its value to the second screen
            const SizedBox(height: 24),
            // TODO: Add a button to navigate to the second screen
                // TODO: Pass the text field value to the second screen
          ],
        ),
      ),
    );
  }
}

// Create a SecondScreen widget for navigation.
class SecondScreen extends StatelessWidget {
  // TODO: Modify the constructor so that it accepts a value from the first screen
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Second Screen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // TODO: Display the passed value
            const SizedBox(height: 24),
            // TODO: Add a button to go back to the first screen
            // Bonus: Add an animation when navigating or displaying the value
          ],
        ),
      ),
    );
  }
}
