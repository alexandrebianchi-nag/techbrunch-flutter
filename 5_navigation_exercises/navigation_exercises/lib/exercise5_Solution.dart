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
  // TODO: Add a TextEditingController to manage the text field input (Bonus)
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Main Screen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // TODO: Add a text field and pass its value to the second screen (Bonus)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: TextField(
                controller: _controller,
                decoration: const InputDecoration(labelText: 'Enter text to pass'),
              ),
            ),
            const SizedBox(height: 24),
            // TODO: Add a button to navigate to the second screen
            ElevatedButton(
              onPressed: () {
                // TODO: Pass the text field value to the second screen
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SecondScreen(
                      // TODO: Pass the value here
                      value: _controller.text,
                    ),
                  ),
                );
              },
              child: const Text('Go to Second Screen'),
            ),
          ],
        ),
      ),
    );
  }
}

// TODO: Create a SecondScreen widget for navigation.
class SecondScreen extends StatelessWidget {
  // TODO: Accept a value from the first screen
  final String value;
  const SecondScreen({super.key, required this.value});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Second Screen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // TODO: Display the passed value
            Text('Value from first screen: $value'),
            const SizedBox(height: 24),
            // TODO: Add a button to go back to the first screen
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Go Back'),
            ),
            // TODO Bonus: Add an animation when navigating or displaying the value
          ],
        ),
      ),
    );
  }
}
